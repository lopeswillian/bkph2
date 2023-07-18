import 'package:freezed_annotation/freezed_annotation.dart';

part 'pix_code_info.freezed.dart';

@freezed
class PixCodeInfo with _$PixCodeInfo {
  factory PixCodeInfo({
    required String pixCode,
  }) = _PixCodeInfo;
}
