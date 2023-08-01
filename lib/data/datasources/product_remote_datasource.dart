import 'dart:async';
import 'package:apph2/data/models/response/calendar_event_model.dart';
import 'package:apph2/data/models/response/calendar_list_info_model.dart';
import 'package:apph2/data/models/response/product_accordion_info_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class IProductDatasource {
  FutureOr<List<ProductAccordionInfoModel>> getProducts();

  FutureOr<CalendarListInfoModel> getEvents(int houseId);

  FutureOr<CalendarEventModel> getEventDetails(int eventId);
}

class ProductDatasource implements IProductDatasource {
  final IHttpClient client;
  static const String _basePath = "product";
  static const String _basePathCalendar = "front-calendar";

  ProductDatasource(this.client);

  @override
  FutureOr<List<ProductAccordionInfoModel>> getProducts() async {
    final response = await client.get(
      '$_basePath/all',
    );

    List<dynamic> dynamicAnticipation = response.data;
    List<ProductAccordionInfoModel> listProducts = dynamicAnticipation
        .map((e) => ProductAccordionInfoModel.fromJson(e))
        .toList();
    return listProducts;
  }

  @override
  FutureOr<CalendarListInfoModel> getEvents(int houseId) async {
    final response = await client.get(
      '$_basePathCalendar/calendar-list/$houseId',
    );

    List<dynamic> dynamicEvents = response.data['data'];
    List<CalendarEventModel> listEvents =
        dynamicEvents.map((e) => CalendarEventModel.fromJson(e)).toList();

    return CalendarListInfoModel(name: response.data['name'], events: listEvents);
  }

  @override
  FutureOr<CalendarEventModel> getEventDetails(int eventId) async {
    final response = await client.get(
      '$_basePathCalendar/calendar-info/$eventId',
    );
    List<dynamic> dynamicEvents = response.data['data'];
    CalendarEventModel event =
        dynamicEvents.map((e) => CalendarEventModel.fromJson(e)).first;

    return event;
  }
}
