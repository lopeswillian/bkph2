// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/monthly_income.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_income_model.freezed.dart';
part 'monthly_income_model.g.dart';

@freezed
class MonthlyIncomeModel with _$MonthlyIncomeModel {
  const MonthlyIncomeModel._();

  factory MonthlyIncomeModel({
    @JsonKey(name: 'monthly_income_id') required int monthlyIncomeId,
    required String description,
  }) = _MonthlyIncomeModel;

  factory MonthlyIncomeModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MonthlyIncomeModelFromJson(json);

  factory MonthlyIncomeModel.fromEntity(
    MonthlyIncome params,
  ) {
    return MonthlyIncomeModel(
      monthlyIncomeId: params.monthlyIncomeId,
      description: params.description,
    );
  }

  MonthlyIncome toEntity() => MonthlyIncome(
        description: description,
        monthlyIncomeId: monthlyIncomeId
      );
}
