import 'package:apph2/infraestructure/infraestructure.dart';
import 'package:apph2/usecases/get_calendar_details_usecase.dart';
import 'package:apph2/usecases/get_calendar_events_usecase.dart';
import 'package:apph2/usecases/get_products_usecase.dart';
import 'package:apph2/views/product/product_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductViewModel extends ViewModel<ProductState> {
  final IGetProductsUseCase _getProductsUseCase;
  final IGetCalendarEventsUseCase _getCalendarEventsUseCase;
  final IGetCalendarDetailsUseCase _getCalendarDetailsUseCase;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  ProductViewModel(
    this._getProductsUseCase,
    this._getCalendarEventsUseCase,
    this._getCalendarDetailsUseCase,
  ) : super(ProductState.initial());

  @override
  void dispose() {}

  Future<void> getProducts() async {
    final SharedPreferences prefs = await _prefs;
    final lastUpdate = state.accordionProducts.isEmpty
        ? null
        : prefs.getString('productsDateLoading');

    if (lastUpdate != null &&
        DateTime.now().difference(DateTime.parse(lastUpdate)).inMinutes < 30) {
      return;
    }

    emit(state.copyWith(loading: true));
    prefs.setString('productsDateLoading', DateTime.now().toString());

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

  Future<void> getEvents(int houseId) async {
    emit(
      state.copyWith(
        loading: true,
        listEvents: null,
      ),
    );
    final response = await _getCalendarEventsUseCase(houseId);

    final newState = response.fold(
      (error) => state.copyWith(
        error: 'Erro ao buscar eventos',
        loading: false,
      ),
      (listEvents) => state.copyWith(
        listEvents: listEvents,
        loading: false,
      ),
    );

    emit(newState);
  }

  Future<void> getEventDetails(int eventId) async {
    emit(state.copyWith(
      loading: true,
      detailsEvent: null,
    ));
    final response = await _getCalendarDetailsUseCase(eventId);

    final newState = response.fold(
      (error) => state.copyWith(
        error: 'Erro ao buscar detalhes do evento.',
        loading: false,
      ),
      (detailsEvent) => state.copyWith(
        detailsEvent: detailsEvent,
        loading: false,
      ),
    );
    emit(newState);
  }
}
