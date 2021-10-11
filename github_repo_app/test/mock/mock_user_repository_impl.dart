import 'package:github_repo_app/entity/owner/owner.dart';
import 'package:github_repo_app/repository/user_repository.dart';
import 'package:github_repo_app/util/result/result.dart';

class MockUserRepositoryImpl implements UserRepository {
  @override
  Future<Result<List<Owner>>> findByName(String name) async {
    return Result.success([
      Owner(login: 'owner1', id: 1, avatarUrl: 'avatarUrl1'),
      Owner(login: 'owner2', id: 2, avatarUrl: 'avatarUrl2'),
      Owner(login: 'owner3', id: 3, avatarUrl: 'avatarUrl3'),
      Owner(login: 'owner4', id: 4, avatarUrl: 'avatarUrl4'),
    ]);
  }
}
