import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/util/failure_reason/failure_reason.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.failure(FailureReason reason) = Failure<T>;
}
