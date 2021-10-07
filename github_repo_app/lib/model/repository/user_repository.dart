import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/entity/owner/owner.dart';
import 'package:github_repo_app/model/repository/user_repository_impl.dart';
import 'package:github_repo_app/util/result/result.dart';

final userRepositoryProvider =
    Provider<UserRepository>((ref) => UserRepositoryImpl(ref));

abstract class UserRepository {
  /// 指定したユーザを取得します。
  Future<Result<List<Owner>>> findByName(String name);
}
