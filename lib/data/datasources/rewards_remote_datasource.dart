import 'dart:async';
import 'package:apph2/data/models/request/rewards/reedem_prize_params_model.dart';
import 'package:apph2/data/models/response/rewards_accordion_category_model.dart';
import 'package:apph2/data/models/response/rewards_category_model.dart';
import 'package:apph2/data/models/response/user_points_info_model.dart';
import 'package:apph2/data/models/response/user_statement_info_model.dart';
import 'package:apph2/infraestructure/http/http_client.dart';

abstract class IRewardsDataSource {
  FutureOr<List<RewardsAccordionCategoryModel>> getRewardsAccordionCategory();

  FutureOr<RewardsCategoryModel> getRewardsCategoryDetail(int id);

  FutureOr<List<UserStatementInfoModel>> getUserStatement({
    required String cpf,
  });

  FutureOr<UserPointsInfoModel> getUserPoints({
    required String cpf,
  });

  FutureOr<bool> reedemPrize(ReedemPrizeParamsModel params);
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

  @override
  FutureOr<List<UserStatementInfoModel>> getUserStatement(
      {required String cpf}) async {
    final response = await client.get(
      'bco-rewards-statement/$cpf',
    );

    List<dynamic> dynamicStatement = response.data['data'];
    List<UserStatementInfoModel> listStatement = dynamicStatement
        .map((e) => UserStatementInfoModel.fromJson(e))
        .toList();

    return listStatement;
  }

  @override
  FutureOr<UserPointsInfoModel> getUserPoints({required String cpf}) async {
    final response = await client.get(
      'bco-rewards-user/$cpf',
    );

    return UserPointsInfoModel.fromJson(response.data['data']);
  }

  @override
  FutureOr<bool> reedemPrize(ReedemPrizeParamsModel reedemPrizeParams) async {
    final body  =reedemPrizeParams.toJson();
    final response = await client.post(
      'bco-rewards-prize/redeem',
      body: body,
    );

    List<int> succesCodes = [200];
    // ignore: iterable_contains_unrelated_type
    return succesCodes.contains(response.status);
  }
}
