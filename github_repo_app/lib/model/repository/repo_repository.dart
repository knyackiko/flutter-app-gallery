import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';

final repoRepositoryProvider = Provider((ref) => RepoRepository());

class RepoRepository {
  Future<List<Repo>> fetch({String userName = 'kyklades'}) async {
    return Future.delayed(
      const Duration(seconds: 2),
      () => [Repo(name: 'repo1'), Repo(name: 'repo2'), Repo(name: 'repo3')],
    );
  }
}
