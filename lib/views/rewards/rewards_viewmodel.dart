import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/get_rewards_categories_usecase.dart';
import 'package:apph2/usecases/get_rewards_category_detail_usecase.dart';
import 'package:apph2/usecases/get_user_points_usecase.dart';
import 'package:apph2/usecases/get_user_statement_usecase.dart';
import 'package:apph2/views/login/login_viewmodel.dart';
import 'package:apph2/views/rewards/rewards_state.dart';

class RewardsViewModel extends ViewModel<RewardsState> {
  final IGetRewardsCategoriesUseCase _getRewardsCategories;
  final IGetRewardsCategoryDetailUseCase _getRewardsCategoryDetailUseCase;
  final IGetUserStatementUseCase _getUserStatementUseCase;
  final IGetuserPointsUseCase _getuserPointsUseCase;
  final LoginViewModel _loginViewModel;

  RewardsViewModel(
    this._getRewardsCategories,
    this._getRewardsCategoryDetailUseCase,
    this._getUserStatementUseCase,
    this._getuserPointsUseCase,
    this._loginViewModel,
  ) : super(RewardsState.initial());

  Future<void> getRewardsGategories() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final response = await _getRewardsCategories();

    final newState = response.fold(
      (error) =>
          state.copyWith(loading: false, error: 'Erro ao buscar categorias.'),
      (listRewardsCategories) => state.copyWith(
        loading: false,
        listRewardsCategories: listRewardsCategories,
      ),
    );

    emit(newState);
  }

  Future<void> getUserPoints() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final response = await _getuserPointsUseCase(
      cpf: _loginViewModel.loggedUser!.cpf,
    );

    final newState = response.fold(
      (error) => state.copyWith(
        loading: false,
        error: 'Erro ao buscar pontos.',
      ),
      (userPoints) => state.copyWith(
        loading: false,
        userPoints: userPoints,
      ),
    );

    emit(newState);
  }

  Future<void> getUserStatement() async {
    emit(
      state.copyWith(
        loading: true,
        error: '',
      ),
    );

    final response = await _getUserStatementUseCase(
      cpf: _loginViewModel.loggedUser!.cpf,
    );

    final newState = response.fold(
      (error) => state.copyWith(
        loading: false,
        error: 'Erro lista de pontos.',
      ),
      (listUserStatement) => state.copyWith(
        loading: false,
        listUserStatement: listUserStatement,
      ),
    );

    emit(newState);
  }

  Future<void> getRewardsCategoryDetail(int id) async {
    emit(
      state.copyWith(loading: true, error: '', rewardDetails: null),
    );

    final response = await _getRewardsCategoryDetailUseCase(id);

    final newState = response.fold(
      (error) => state.copyWith(
        loading: false,
        error: 'Erro ao buscar prêmio.',
      ),
      (rewardDetails) => state.copyWith(
        loading: false,
        rewardDetails: rewardDetails,
      ),
    );

    emit(newState);
  }
}
