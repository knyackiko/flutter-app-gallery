import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'failure_reason.freezed.dart';

@freezed
class FailureReason with _$FailureReason {
  // 200(OK)以外のレスポンス
  const factory FailureReason.notOk({
    required Response response,
  }) = NotOk;
  const factory FailureReason.unexpected({
    required Exception exception,
  }) = Unexpected;
  const factory FailureReason.invalidJsonFormat({
    required CheckedFromJsonException exception,
  }) = InvalidJsonFormat;
}
