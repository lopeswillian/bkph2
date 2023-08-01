import 'dart:async';
import 'package:apph2/data/models/response/rewards_accordion_category_model.dart';
import 'package:apph2/data/models/response/rewards_category_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class IRewardsDataSource {
  FutureOr<List<RewardsAccordionCategoryModel>> getRewardsAccordionCategory();

  FutureOr<RewardsCategoryModel> getRewardsCategoryDetail(int id);
}

class RewardsDataSource implements IRewardsDataSource {
  final IHttpClient client;

  RewardsDataSource(this.client);

  @override
  FutureOr<List<RewardsAccordionCategoryModel>>
      getRewardsAccordionCategory() async {
    final response = await client.get(
      'bco-rewards-categories',
    );

    List<dynamic> dynamicAnticipation = response.data['data'];
    List<RewardsAccordionCategoryModel> listPrizes = dynamicAnticipation
        .map((e) => RewardsAccordionCategoryModel.fromJson(e))
        .toList();
    return listPrizes;
  }

  @override
  FutureOr<RewardsCategoryModel> getRewardsCategoryDetail(int id) async {
    final response = await client.get(
      'bco-rewards-prize/$id',
    );

    return RewardsCategoryModel.fromJson(response.data['data']);
  }
}
