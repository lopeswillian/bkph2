import 'package:apph2/domain/entities/profile_update_params.dart';
import 'package:apph2/domain/entities/rewards_id_param.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/get_profile_usecase.dart';
import 'package:apph2/usecases/update_profile_usecase.dart';
import 'package:apph2/views/profile/profile_state.dart';

class ProfileViewModel extends ViewModel<ProfileState> {
  final IGetProfileUseCase _getProfileUseCase;
  final IUpdateProfileUseCase _updateProfileUseCase;

  ProfileViewModel(
    this._getProfileUseCase,
    this._updateProfileUseCase,
  ) : super(ProfileState.initial());

  @override
  void dispose() {}

  Future<void> getProfile({
    required RewardsIdParam rewardsIdParam,
  }) async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );
    final result = await _getProfileUseCase(rewardsIdParam);
    final newState = result.fold(
      (error) =>
          state.copyWith(loading: false, error: 'Erro ao buscar perfil.'),
      (profile) => state.copyWith(loading: false, profile: profile),
    );

    emit(newState);
  }

  Future<void> updateProfile({
    required ProfileUpdateParams params,
  }) async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
        updated: false,
      ),
    );

    RegExp areaCodeRegExp = RegExp(r'\((\d+)\)');
    Match? areaCodeMatch = areaCodeRegExp.firstMatch(params.cellphone);
    String? areaCode = areaCodeMatch?.group(1);

    String cleanedNumber = params.cellphone.replaceAll(RegExp(r'[()\s-]'), '');

    String phoneNumberDigits = cleanedNumber.substring(areaCode?.length ?? 0);

    ProfileUpdateParams updateParams = params.copyWith(
        cellphone: phoneNumberDigits,
        ddd: areaCode ?? '',
        zipCode: params.zipCode.replaceAll(RegExp(r'[^0-9]'), ''));

    final result = await _updateProfileUseCase(updateParams);
    final resultProfile = await _getProfileUseCase(
      RewardsIdParam(
        rewardsId: updateParams.customerId.toString(),
      ),
    );

    final newProfile = resultProfile.fold((l) => null, (profile) => profile);

    final newState = result.fold(
      (error) => state.copyWith(
        loading: false,
        error: error.maybeMap(
          server: (error) => error.message,
          invalidParams: (error) => error.message,
          unauthorized: (error) => error.message,
          invalidData: (error) => error.message,
          unprocessableEntity: (error) => error.message,
          orElse: () => '',
        ),
        updated: false,
      ),
      (profile) => state.copyWith(
        loading: false,
        error: '',
        profile: newProfile,
        updated: true,
      ),
    );

    emit(newState);
  }
}
