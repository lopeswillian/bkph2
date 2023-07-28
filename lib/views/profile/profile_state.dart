import 'package:apph2/domain/entities/profile_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState extends ViewModelState with _$ProfileState{
  const factory ProfileState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default(false) bool updated,
    ProfileInfo? profile,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState();
}