import 'package:github_repo_app/entity/owner/owner.dart';
import 'package:github_repo_app/repository/data_source/api/user_api_client.dart';
import 'package:github_repo_app/repository/user_repository.dart';
import 'package:github_repo_app/util/result/result.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(ref) {
    _userApiClient = ref.read(userApiClientProvider);
  }

  late final UserApiClient _userApiClient;

  @override
  Future<Result<List<Owner>>> findByName(String name) {
    return _userApiClient.findUsers(name);
  }
}
