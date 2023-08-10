// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/user_statement_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_statement_info_model.freezed.dart';
part 'user_statement_info_model.g.dart';

@freezed
class UserStatementInfoModel with _$UserStatementInfoModel {
  const UserStatementInfoModel._();
  factory UserStatementInfoModel({
    required int id,
    required String description,
    required String date,
    @JsonKey(name: 'formatted_date') required String formattedDate,
    required String type,
    @JsonKey(name: 'rewards_points') required double rewardsPoints,
    @JsonKey(name: 'date_counting_end') String? dateCountingEnd,
  }) = _UserStatementInfoModel;

  factory UserStatementInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserStatementInfoModelFromJson(json);

  UserStatementInfo toEntity() => UserStatementInfo(
        id: id,
        description: description,
        date: date,
        formattedDate: formattedDate,
        type: type,
        rewardsPoints: rewardsPoints,
        dateCountingEnd: dateCountingEnd
      );
}
