import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/model/repository/repo_repository_impl.dart';
import 'package:github_repo_app/util/result/result.dart';

final repoRepositoryProvider =
    Provider<RepoRepository>((ref) => RepoRepositoryImpl(ref));

abstract class RepoRepository {
  Future<Result<List<Repo>>> findByUserName(String userName);
}
