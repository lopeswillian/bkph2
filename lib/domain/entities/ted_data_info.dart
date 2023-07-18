import 'package:freezed_annotation/freezed_annotation.dart';

part 'ted_data_info.freezed.dart';

@freezed
class TedDataInfo with _$TedDataInfo {
  factory TedDataInfo({
    required String bank,
    required String agency,
    required String account,
    required String favoured,
  }) = _TedDataInfo;
}
