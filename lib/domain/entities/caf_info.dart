import 'package:freezed_annotation/freezed_annotation.dart';

part 'caf_info.freezed.dart';

@freezed
class CafInfo with _$CafInfo {
  factory CafInfo({
    required String requestId,
    required String id,
  }) = _CafInfo;
}
