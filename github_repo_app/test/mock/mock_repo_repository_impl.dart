import 'package:github_repo_app/entity/owner/owner.dart';
import 'package:github_repo_app/entity/repo/repo.dart';
import 'package:github_repo_app/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/util/failure_reason/failure_reason.dart';
import 'package:github_repo_app/util/result/result.dart';

class MockRepoRepositoryImpl implements RepoRepository {
  @override
  Future<Result<List<Repo>>> findByName(String name) async {
    final owner = Owner(login: '', id: 0, avatarUrl: '');
    final date = DateTime.now();
    return Result.success([
      Repo(
        id: 1,
        name: 'repo1',
        owner: owner,
        fullName: 'repo1-repo1',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      ),
      Repo(
        id: 2,
        name: 'repo2',
        owner: owner,
        fullName: 'repo2-repo2',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      ),
      Repo(
        id: 3,
        name: 'repo3',
        owner: owner,
        fullName: 'repo3-repo3',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      ),
    ]);
  }

  @override
  Future<Result<List<Repo>>> findByUserName(String userName) async {
    final owner = Owner(login: '', id: 0, avatarUrl: '');
    final date = DateTime.now();
    return Result.success([
      Repo(
        id: 1,
        name: 'repo1',
        owner: owner,
        fullName: 'repo1-repo1',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      ),
      Repo(
        id: 2,
        name: 'repo2',
        owner: owner,
        fullName: 'repo2-repo2',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      ),
      Repo(
        id: 3,
        name: 'repo3',
        owner: owner,
        fullName: 'repo3-repo3',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      ),
    ]);
  }

  @override
  Future<Result<List<FavoriteRepo>>> filterFavorites() async {
    final owner = Owner(login: '', id: 0, avatarUrl: '');
    final date = DateTime.now();
    return Result.success([
      FavoriteRepo.fromRepo(Repo(
        id: 1,
        name: 'repo1',
        owner: owner,
        fullName: 'repo1-repo1',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      )),
      FavoriteRepo.fromRepo(Repo(
        id: 2,
        name: 'repo2',
        owner: owner,
        fullName: 'repo2-repo2',
        htmlUrl: '',
        private: false,
        createdAt: date,
        updatedAt: date,
        pushedAt: date,
      )),
    ]);
  }

  @override
  Future<Result<List<FavoriteRepo>>> findFavorite(int id) async {
    final owner = Owner(login: '', id: 0, avatarUrl: '');
    final date = DateTime.now();
    if (id == 1) {
      return Result.success([
        FavoriteRepo.fromRepo(Repo(
          id: 1,
          name: 'repo1',
          owner: owner,
          fullName: 'repo1-repo1',
          htmlUrl: '',
          private: false,
          createdAt: date,
          updatedAt: date,
          pushedAt: date,
        )),
      ]);
    }
    return const Result.failure(FailureReason.unexpected());
  }

  @override
  Future<Result<int>> addToFavorite(FavoriteRepo repo) async {
    return const Result.success(1);
  }

  @override
  Future<Result<int>> removeFromFavorite(FavoriteRepo repo) async {
    return const Result.success(1);
  }
}
