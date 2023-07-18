import 'package:freezed_annotation/freezed_annotation.dart';

part 'monthly_income.freezed.dart';

@freezed
class MonthlyIncome with _$MonthlyIncome {
  factory MonthlyIncome({
    required int monthlyIncomeId,
    required String description,
  }) = _MonthlyIncome;
}
