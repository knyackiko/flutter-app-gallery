import 'package:github_repo_app/entity/repo/repo.dart';
import 'package:github_repo_app/repository/data_source/api/repository_api_client.dart';
import 'package:github_repo_app/repository/data_source/api/user_api_client.dart';
import 'package:github_repo_app/repository/data_source/db/db_client.dart';
import 'package:github_repo_app/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/repository/repo_repository.dart';
import 'package:github_repo_app/util/result/result.dart';

class RepoRepositoryImpl implements RepoRepository {
  RepoRepositoryImpl(ref) {
    _userApiClient = ref.read(userApiClientProvider);
    _repositoryApiClient = ref.read(repositoryApiClientProvider);
    _dbClient = ref.read(dbClientProvider);
  }

  late final UserApiClient _userApiClient;
  late final RepositoryApiClient _repositoryApiClient;
  late final DbClient _dbClient;

  @override
  Future<Result<List<Repo>>> findByName(String name) {
    return _repositoryApiClient.findByName(name);
  }

  @override
  Future<Result<List<Repo>>> findByUserName(String userName) {
    return _userApiClient.findRepos(userName);
  }

  @override
  Future<Result<List<FavoriteRepo>>> filterFavorites() {
    return _dbClient.select<FavoriteRepo>(
        DbSelectParam(FavoriteRepoTable.tableName),
        (map) => FavoriteRepo.fromMap(map));
  }

  @override
  Future<Result<List<FavoriteRepo>>> findFavorite(int id) {
    return _dbClient.select<FavoriteRepo>(
        DbSelectParam(
          FavoriteRepoTable.tableName,
          where: '${FavoriteRepoTable.columnId} = ?',
          whereArgs: [id],
        ),
        (map) => FavoriteRepo.fromMap(map));
  }

  @override
  Future<Result<int>> addToFavorite(FavoriteRepo repo) {
    return _dbClient.insert(FavoriteRepoTable.tableName, repo);
  }

  @override
  Future<Result<int>> removeFromFavorite(FavoriteRepo repo) {
    return _dbClient.delete(DbDeleteParam(
      FavoriteRepoTable.tableName,
      where: '${FavoriteRepoTable.columnId} = ?',
      whereArgs: [repo.id],
    ));
  }
}
