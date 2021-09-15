import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/model/repository/data_source/api/user_api_client.dart';
import 'package:github_repo_app/model/repository/repo_repository.dart';
import 'package:github_repo_app/util/result/result.dart';

class RepoRepositoryImpl implements RepoRepository {
  RepoRepositoryImpl(ref) {
    userApiClient = ref.read(userApiClientProvider);
  }

  late final UserApiClient userApiClient;

  @override
  Future<Result<List<Repo>>> findByUserName(String userName) async {
    return await userApiClient.findRepos(userName);
  }
}
