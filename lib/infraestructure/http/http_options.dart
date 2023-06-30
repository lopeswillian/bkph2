import 'package:freezed_annotation/freezed_annotation.dart';

import 'http_method.dart';

part 'http_options.freezed.dart';

/// HTTP request options
@freezed
class HttpOptions with _$HttpOptions {
  /// Create a [HttpOptions]
  const factory HttpOptions({
    required String path,
    required HttpMethod method,
    String? url,
    Map<String, dynamic>? data,
    Map<String, String>? headers,
    Map<String, dynamic>? query,
    Duration? timeout,
    String? apiVersion,
  }) = _HttpOptions;
}
