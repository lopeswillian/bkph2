import 'package:freezed_annotation/freezed_annotation.dart';

part 'job.freezed.dart';

@freezed
class Job with _$Job {
  factory Job({
    required int jobId,
    required String description,
  }) = _Job;
}
