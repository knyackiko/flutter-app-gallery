import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/entity/owner/owner.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/model/repository/data_source/api/api_executor.dart';
import 'package:github_repo_app/util/result/result.dart';
import 'package:http/http.dart' as http;

final userApiClientProvider =
    Provider<UserApiClient>((ref) => UserApiClient(ref));

class UserApiClient {
  UserApiClient(ref) {
    apiExecutor = ref.read(apiExecutorProvider);
  }

  late final ApiExecutor apiExecutor;

  Future<Result<List<Repo>>> findRepos(String userName) async {
    if (userName.isEmpty) {
      return const Result.success([]);
    }
    return await apiExecutor.execute<List<Repo>>(
      executor: () =>
          http.get(Uri.parse('https://api.github.com/users/$userName/repos')),
      fromJson: (json) {
        return (json as List).map((j) => Repo.fromJson(j)).toList();
      },
    );
  }

  Future<Result<List<Owner>>> findUsers(String userName) async {
    if (userName.isEmpty) {
      return const Result.success([]);
    }
    return await apiExecutor.execute<List<Owner>>(
      executor: () => http
          .get(Uri.parse('https://api.github.com/search/users?q=$userName')),
      fromJson: (json) {
        return (json['items'] as List).map((j) => Owner.fromJson(j)).toList();
      },
    );
  }
}
