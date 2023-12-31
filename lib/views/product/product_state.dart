import 'package:apph2/domain/entities/calendar_event.dart';
import 'package:apph2/domain/entities/calendar_list_info.dart';
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
    @Default([]) List<ProductAccordionInfo> accordionProductsSchedule,
    CalendarListInfo? listEvents,
    CalendarEvent? detailsEvent,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState();
}
