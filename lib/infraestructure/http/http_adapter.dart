import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;
import 'package:http/http.dart' as http;
import '../../domain/errors/errors.dart';
import '../infraestructure.dart';

///
/// [IHttpClient] implementation using dart:io default HttpClient
///
class HttpAdapter implements IHttpClient {
  static const _defaultConnectionTimeout = Duration(seconds: 10);

  static const _defaultHeaders = {
    'content-type': 'application/json; charset=utf-8',
    'accept': 'application/json',
  };

  static const _defaultAPIVersion = 'v1';

  ///
  /// dart:io HttpClient
  ///
  final io.HttpClient client;

  ///
  /// APIVersion - Default: v1.
  /// Can be inserted in HttpAdapter constructor or in each method(get, post...)
  ///
  final String? apiVersion;

  ///
  /// HTTP interceptors
  ///
  final List<HttpInterceptor> interceptors = [];

  ///
  /// Headers that will be applied to all requests.
  ///
  /// By default, `content-type` and `accept` are defined as 'application/json'.
  /// If you change this property, this keys will be ignored, so you need to set
  /// them (if necessary)
  ///
  final Map<String, String>? headers;

  ///
  /// Base URL to be set as prefix for all requests.
  ///
  final FutureOr<String> baseUrl;

  ///
  /// Creates a new [HttpAdapter]
  ///
  HttpAdapter({
    required this.client,
    required this.baseUrl,
    this.headers = _defaultHeaders,
    this.apiVersion,
  });

  @override
  Future<HttpResponse> delete(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    Map<String, dynamic>? query,
    Duration? timeout = _defaultConnectionTimeout,
    String? apiVersion,
  }) async {
    return _handleRequest(
      HttpOptions(
        path: path,
        method: HttpMethod.delete,
        apiVersion: apiVersion,
        data: body,
        headers: headers,
        timeout: timeout,
        query: query,
      ),
    );
  }

  @override
  Future<HttpResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Duration? timeout = _defaultConnectionTimeout,
    String? apiVersion,
  }) async {
    return _handleRequest(
      HttpOptions(
        path: path,
        query: query,
        apiVersion: apiVersion,
        method: HttpMethod.get,
        headers: headers,
        timeout: timeout,
      ),
    );
  }

  @override
  Future<HttpResponse> patch(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
    Duration? timeout = _defaultConnectionTimeout,
    String? apiVersion,
  }) async {
    return _handleRequest(
      HttpOptions(
        path: path,
        method: HttpMethod.patch,
        apiVersion: apiVersion,
        data: body,
        query: query,
        headers: headers,
        timeout: timeout,
      ),
    );
  }

  @override
  Future<HttpResponse> post(
    String path, {
    HttpMultipartOptions? httpMultipartOptions,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    Duration? timeout = _defaultConnectionTimeout,
    String? apiVersion,
    Map<String, dynamic>? query,
  }) async {
    return _handleRequest(
      HttpOptions(
        path: path,
        method: HttpMethod.post,
        apiVersion: apiVersion,
        data: body,
        headers: headers,
        timeout: timeout,
        query: query,
      ),
      httpMultipartOptions: httpMultipartOptions,
    );
  }

  @override
  Future<HttpResponse> put(
    String path, {
    HttpMultipartOptions? httpMultipartOptions,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Map<String, dynamic>? body,
    Duration? timeout = _defaultConnectionTimeout,
    String? apiVersion,
  }) async {
    return _handleRequest(
      HttpOptions(
        path: path,
        method: HttpMethod.put,
        apiVersion: apiVersion,
        data: body,
        query: query,
        headers: headers,
        timeout: timeout,
      ),
      httpMultipartOptions: httpMultipartOptions,
    );
  }

  Future<io.HttpClientRequest> _requestFactory({
    required String url,
    required HttpMethod method,
    Duration? timeout,
    Map<String, dynamic>? query,
  }) async {
    client.connectionTimeout = timeout;
    var uri = Uri.parse(url);
    uri = Uri(
      scheme: uri.scheme,
      host: uri.host,
      path: uri.path,
      port: uri.port,
      queryParameters: query?.map(
        (key, value) => MapEntry(
          key,
          value is num ? value.toString() : value,
        ),
      ),
    );

    switch (method) {
      case HttpMethod.delete:
        return await client.deleteUrl(uri);
      case HttpMethod.get:
        return await client.getUrl(uri);
      case HttpMethod.post:
        return await client.postUrl(uri);
      case HttpMethod.patch:
        return await client.patchUrl(uri);
      case HttpMethod.put:
        return await client.putUrl(uri);
    }
  }

  Future<HttpResponse> _handleRequest(
    HttpOptions httpOptions, {
    HttpMultipartOptions? httpMultipartOptions,
  }) async {
    try {
      if (httpMultipartOptions != null) {
        return _handleMultipartRequest(
          httpOptions: httpOptions,
          files: httpMultipartOptions.files,
          fields: httpMultipartOptions.fields,
        );
      }

      httpOptions = _setDefaultHeaders(await _makeCompleteURL(httpOptions));

      final options = await _handleRequestInterceptor(httpOptions);

      final request = await _requestFactory(
        method: options.method,
        url: options.url!,
        timeout: options.timeout,
        query: options.query,
      );

      _handleHeaders(request, options.headers);

      _handleBody(request, options.data);

      final response = await request.close();

      final httpResponse = await _handleResponse(response);
      return await _handleResponseInterceptor(httpResponse);
    } on io.SocketException catch (error) {
      throw TimeoutException(message: error.message);
    } on IHttpException catch (httpException) {
      _handleErrorInterceptor(httpException);

      rethrow;
    } catch (error) {
      throw UnknownConnectionError(data: error.toString());
    }
  }

  Future<HttpResponse> _handleMultipartRequest({
    required HttpOptions httpOptions,
    required List<HttpMultipartFile> files,
    Map<String, String>? fields,
  }) async {
    try {
      httpOptions = await _makeCompleteURL(httpOptions);

      final options = await _handleRequestInterceptor(httpOptions);

      final request = await _requestFactory(
        method: options.method,
        url: options.url!,
        timeout: options.timeout,
        query: options.query,
      );

      _handleHeaders(request, options.headers);

      var requestMultipart = http.MultipartRequest(
        options.method == HttpMethod.post ? 'POST' : 'PUT',
        Uri.parse('uri'),
      );

      if (fields != null) {
        requestMultipart.fields.addAll(fields);
      }

      final multipartFiles = files.map(
        (file) => http.MultipartFile.fromPath(
          file.field,
          file.file.path,
        ),
      );

      requestMultipart.files.addAll(await Future.wait(multipartFiles));

      var msStream = requestMultipart.finalize();

      var totalByteLength = requestMultipart.contentLength;

      request.contentLength = totalByteLength;

      request.headers.set(
        io.HttpHeaders.contentTypeHeader,
        requestMultipart.headers[io.HttpHeaders.contentTypeHeader]!,
      );

      Stream<List<int>> streamUpload = msStream.transform(
        StreamTransformer.fromHandlers(
          handleData: (data, sink) {
            sink.add(data);
          },
          handleError: (error, stack, sink) {
            throw error;
          },
          handleDone: (sink) {
            sink.close();
          },
        ),
      );

      await request.addStream(streamUpload);

      final response = await request.close();

      final httpResponse = await _handleResponse(response);
      return await _handleResponseInterceptor(httpResponse);
    } on io.SocketException catch (error) {

      throw TimeoutException(message: error.message);
    } on IHttpException catch (httpException) {
      _handleErrorInterceptor(httpException);

      rethrow;
    } catch (error) {
      throw DomainException(cause: error.toString());
    }
  }

  void _handleBody(io.HttpClientRequest request, Map<String, dynamic>? body) {
    if (body != null) {
      request.write(json.encode(body));
    }
  }

  Future<Object?> _readResponse(io.HttpClientResponse response) async {
    final contents = StringBuffer();
    try {
      await for (var data in response.transform(utf8.decoder)) {
        contents.write(data);
      }
      if (contents.isEmpty) {
        return null;
      }
      try {
        return jsonDecode(contents.toString());
      } catch (_) {
        return contents.toString();
      }
    } catch (error) {
      return error.toString();
    }
  }

  Future<HttpOptions> _makeCompleteURL(HttpOptions options) async {
    final version = _getApiVersion(options);
    final url = await baseUrl;

    if (version.isEmpty) {
      return options.copyWith(
        url: '$url${options.path}',
      );
    }

    return options.copyWith(
      url: '$url$version/${options.path}',
    );
  }

  String _getApiVersion(HttpOptions options) {
    var version = _defaultAPIVersion;

    if (apiVersion != null) version = apiVersion!;

    if (options.apiVersion != null) version = options.apiVersion!;

    return version;
  }

  HttpOptions _setDefaultHeaders(HttpOptions options) {
    return options.copyWith(
      headers: Map.from(options.headers ?? {})..addAll(headers ?? {}),
    );
  }

  void _handleHeaders(
    io.HttpClientRequest request,
    Map<String, String>? headers,
  ) {
    final headersCopy = Map.from(headers ?? {});
    headersCopy.forEach((key, value) {
      request.headers.set(key, value);
    });
  }

  Future<HttpResponse> _handleResponse(
    io.HttpClientResponse response,
  ) async {
    final statusCode = HttpStatus.values.firstWhere(
      (status) => status.code == response.statusCode,
    );

    if (statusCode.code.between(200, 299)) {
      switch (statusCode) {
        case HttpStatus.ok:
        case HttpStatus.created:
          return await _handleData(response, statusCode);
        case HttpStatus.accepted:
          return HttpResponse.empty(status: statusCode);
        default:
          return HttpResponse.empty();
      }
    } else if (statusCode.code.between(400, 499)) {
      final data = await _readResponse(response);
      if (statusCode == HttpStatus.unauthorized) {
        throw UnauthorizedException(message: response.reasonPhrase, data: data);
      }

      throw BadRequestException(
        status: statusCode,
        message: response.reasonPhrase,
        data: data,
      );
    } else {
      throw ServerErrorException(message: response.reasonPhrase);
    }
  }

  Future<HttpResponse> _handleData(
    io.HttpClientResponse response,
    HttpStatus status,
  ) async {
    final responseData = await _readResponse(response);
    if (responseData == null) {
      return HttpResponse.empty(status: status);
    }
    return HttpResponse.success(responseData, status: status);
  }

  @override
  void addInterceptors(List<HttpInterceptor> interceptors) {
    this.interceptors.addAll(interceptors);
  }

  void _handleErrorInterceptor(IHttpException exception) {
    for (var interceptor in interceptors) {
      interceptor.onError(exception);
    }
  }

  FutureOr<HttpOptions> _handleRequestInterceptor(HttpOptions request) async {
    HttpOptions toReturn = request;

    for (var interceptor in interceptors) {
      toReturn = await interceptor.onRequest(toReturn, this);
    }

    return toReturn;
  }

  FutureOr<HttpResponse> _handleResponseInterceptor(
    HttpResponse response,
  ) async {
    HttpResponse toReturn = response;

    for (var interceptor in interceptors) {
      toReturn = await interceptor.onResponse(toReturn);
    }

    return toReturn;
  }
}

/// Extension for status code
extension StatusCodeExtension on int {
  ///
  /// Checks if it's between [min] and [max] values
  ///
  bool between(int min, int max) {
    return this >= min && this <= max;
  }
}
