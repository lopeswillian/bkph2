import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_statement_info.freezed.dart';

@freezed
class UserStatementInfo with _$UserStatementInfo {
  factory UserStatementInfo({
    required int id,
    required String description,
    required String date,
    required String formattedDate,
    required String type,
    required double rewardsPoints,
    String? dateCountingEnd,
  }) = _UserStatementInfo;
}
