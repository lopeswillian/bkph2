// ignore_for_file: invalid_annotation_target

import 'package:apph2/domain/entities/job.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_model.freezed.dart';
part 'job_model.g.dart';

@freezed
class JobModel with _$JobModel {
  const JobModel._();

  factory JobModel({
    @JsonKey(name: 'jobs_id') required int jobId,
    required String description,
  }) = _JobModel;

  factory JobModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$JobModelFromJson(json);

  factory JobModel.fromEntity(
    Job params,
  ) {
    return JobModel(
      jobId: params.jobId,
      description: params.description,
    );
  }

  Job toEntity() => Job(
        jobId: jobId,
        description: description,
      );
}
