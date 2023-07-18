import 'package:apph2/domain/entities/document_side_type.dart';
import 'package:apph2/domain/entities/job.dart';
import 'package:apph2/domain/entities/monthly_income.dart';
import 'package:apph2/domain/entities/terms_conditions.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_state.freezed.dart';

@freezed
class VerifyState extends ViewModelState with _$VerifyState {
  const factory VerifyState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default('') String phone,
    DocumentSideType? typeDocument,
    @Default([]) List<Job> listJobs,
    @Default([]) List<MonthlyIncome> listMonthlyIncome,
    TermsConditions? termsCondition,
    Job? selectedJob,
    MonthlyIncome? selectedMonthlyIncome,
    @Default('') String cafId
  }) = _VerifyState;

  factory VerifyState.initial() => const VerifyState();
}
