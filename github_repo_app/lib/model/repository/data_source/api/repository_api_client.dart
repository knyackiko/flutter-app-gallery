import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/model/repository/data_source/api/api_executor.dart';
import 'package:github_repo_app/util/result/result.dart';
import 'package:http/http.dart' as http;

final repositoryApiClientProvider =
    Provider<RepositoryApiClient>((ref) => RepositoryApiClient(ref));

class RepositoryApiClient {
  RepositoryApiClient(ref) {
    apiExecutor = ref.read(apiExecutorProvider);
  }

  late final ApiExecutor apiExecutor;

  Future<Result<List<Repo>>> findByName(String name) async {
    if (name.isEmpty) {
      return const Result.success([]);
    }
    return await apiExecutor.execute<List<Repo>>(
      executor: () => http.get(Uri.parse(
          'https://api.github.com/search/repositories?q=$name+in:name')),
      fromJson: (json) {
        return (json['items'] as List).map((j) => Repo.fromJson(j)).toList();
      },
    );
  }
}
