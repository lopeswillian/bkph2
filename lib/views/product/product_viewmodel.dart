import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_products_usecase.dart';
import 'package:apph2/views/product/product_state.dart';

class ProductViewModel extends ViewModel<ProductState> {
  final IGetProductsUseCase _getProductsUseCase;

  ProductViewModel(
    this._getProductsUseCase,
  ) : super(ProductState.initial());

  Future<void> getProducts() async {
    emit(state.copyWith(loading: true));
    final response = await _getProductsUseCase();

    final newState = response.fold(
      (error) => state.copyWith(
        error: 'Erro ao buscar produtos',
        loading: false,
      ),
      (listProducts) => state.copyWith(
        accordionProducts: listProducts,
        loading: false,
      ),
    );
    emit(newState);
  }
}
