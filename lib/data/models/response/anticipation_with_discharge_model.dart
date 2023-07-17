import 'package:apph2/data/models/response/anticipation_info_model.dart';
import 'package:apph2/domain/entities/anticipation_with_discharge.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'anticipation_with_discharge_model.freezed.dart';
part 'anticipation_with_discharge_model.g.dart';

@freezed
@JsonSerializable()
class AnticipationWithDischargeModel with _$AnticipationWithDischargeModel {
  const AnticipationWithDischargeModel._();

  factory AnticipationWithDischargeModel({
    required double discharge,
    required List<AnticipationInfoModel> listAnticipation,
  }) = _AnticipationWithDischargeModel;

  factory AnticipationWithDischargeModel.fromToken(String token) {
    Map<String, dynamic> decodedToken = JwtDecoder.decode(token);
    List<dynamic> dynamicAnticipation = decodedToken['anticipation_list'];
    List<AnticipationInfoModel> listAnticipation = dynamicAnticipation
        .map((e) => AnticipationInfoModel.fromJson(e))
        .toList();
    return AnticipationWithDischargeModel(
      listAnticipation: listAnticipation,
      discharge: double.parse(decodedToken['amount_due'].toString()),
    );
  }

  AnticipationWithDischarge toEntity() => AnticipationWithDischarge(
        discharge: discharge,
        listAnticipation:
            listAnticipation.map((key) => key.toEntity()).toList(),
      );
}
