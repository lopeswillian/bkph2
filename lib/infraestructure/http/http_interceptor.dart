import 'dart:async';

import 'package:apph2/infraestructure/http/http.dart';

///
/// Provide a way to intercept HTTP requests to handle the request, response and errors.
///
class HttpInterceptor {
  /// Intercept responses.
  /// Receive the original response as argument.
  FutureOr<HttpResponse> onResponse(HttpResponse response) {
    return response;
  }

  /// Intercept request errors. Receive the original exception as argument.
  ///
  /// Must throw a new exception to override the default error.
  void onError(IHttpException exception) {}

  /// Intercept the HTTP request being sent.
  /// Receive the request settings and the current http client as arguments.
  FutureOr<HttpOptions> onRequest(HttpOptions request, IHttpClient client) {
    return request;
  }
}
