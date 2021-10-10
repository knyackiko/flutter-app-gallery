import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_app/util/failure_reason/failure_reason.dart';
import 'package:github_repo_app/util/result/result.dart';
import 'package:http/http.dart';

final apiExecutorProvider = Provider<ApiExecutor>((ref) => ApiExecutor());

class ApiExecutor {
  Future<Result<T>> execute<T>({
    required Future<Response> Function() executor,
    required T Function(dynamic json) fromJson,
  }) async {
    try {
      final response = await executor();
      if (response.statusCode == HttpStatus.ok) {
        final t = fromJson(jsonDecode((response.body)));
        return Result.success(t);
      }
      return Result.failure(FailureReason.notOk(response: response));
    } on CheckedFromJsonException catch (exception) {
      return Result.failure(
        FailureReason.invalidJsonFormat(exception: exception),
      );
    } on Exception catch (exception) {
      return Result.failure(
        FailureReason.unexpected(exception: exception),
      );
    }
  }
}
