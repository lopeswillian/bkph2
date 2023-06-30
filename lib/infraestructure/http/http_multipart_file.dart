import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_multipart_file.freezed.dart';

///HTTP multipart file.
@freezed
class HttpMultipartFile with _$HttpMultipartFile {
  /// Create a [HttpMultipartFile]
  const factory HttpMultipartFile({
    required String field,
    required File file,
  }) = _HttpMultipartFile;
}
