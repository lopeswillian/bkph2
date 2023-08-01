import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:apph2/usecases/get_rewards_categories_usecase.dart';
import 'package:apph2/usecases/get_rewards_category_detail_usecase.dart';
import 'package:apph2/views/rewards/rewards_state.dart';

class RewardsViewModel extends ViewModel<RewardsState> {
  final IGetRewardsCategoriesUseCase _getRewardsCategories;
  final IGetRewardsCategoryDetailUseCase _getRewardsCategoryDetailUseCase;

  RewardsViewModel(
    this._getRewardsCategories,
    this._getRewardsCategoryDetailUseCase,
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
