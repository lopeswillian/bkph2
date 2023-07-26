import 'package:apph2/domain/entities/product_accordion_info.dart';
import 'package:apph2/infraestructure/mvvm/mvvm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState extends ViewModelState with _$ProductState {
  const factory ProductState({
    @Default(false) bool loading,
    @Default('') String error,
    @Default([]) List<ProductAccordionInfo> accordionProducts,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState();
}
