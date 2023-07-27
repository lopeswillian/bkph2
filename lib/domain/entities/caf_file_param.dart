import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_file_param.freezed.dart';

@freezed
class CafFileParam with _$CafFileParam {
  factory CafFileParam({
    required String type,
    required String data,
  }) = _CafFileParam;
}
