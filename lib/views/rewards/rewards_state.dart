import 'package:apph2/domain/entities/rewards_accordion_category.dart';
import 'package:apph2/domain/entities/rewards_category.dart';
import 'package:apph2/domain/entities/user_points_info.dart';
import 'package:apph2/domain/entities/user_statement_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'rewards_state.freezed.dart';

@freezed
class RewardsState extends ViewModelState with _$RewardsState {
  const factory RewardsState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default('') String successReedem,
    @Default([]) List<RewardsAccordionCategory> listRewardsCategories,
    RewardsCategory? rewardDetails,
    @Default([]) List<UserStatementInfo> listUserStatement,
    UserPointsInfo? userPoints,
  }) = _RewardsState;

  factory RewardsState.initial() => const RewardsState();
}
