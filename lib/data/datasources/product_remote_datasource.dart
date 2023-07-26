import 'dart:async';
import 'package:apph2/data/models/response/product_accordion_info_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class IProductDatasource {
  FutureOr<List<ProductAccordionInfoModel>> getProducts();
}

class ProductDatasource implements IProductDatasource {
  final IHttpClient client;
  static const String _basePath = "product";

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
}
