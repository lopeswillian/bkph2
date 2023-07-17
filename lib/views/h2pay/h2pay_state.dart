import 'package:apph2/domain/entities/anticipation_info.dart';
import 'package:apph2/domain/entities/customer_companies.dart';
import 'package:apph2/domain/entities/customer_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'h2pay_state.freezed.dart';

@freezed
class H2PayState extends ViewModelState with _$H2PayState {
  const factory H2PayState({
    @Default(false) bool loading,
    @Default('') String error,
    CustomerInfo? customer,
    AnticipationInfo? anticipation,
    CustomerCompanies? customerCompanies,
  }) = _H2PayState;

  factory H2PayState.initial() => const H2PayState();
}
