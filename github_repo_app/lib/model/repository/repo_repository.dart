import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/entity/repo/repo.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/model/repository/repo_repository_impl.dart';
import 'package:github_repo_app/util/result/result.dart';

final repoRepositoryProvider =
    Provider<RepoRepository>((ref) => RepoRepositoryImpl(ref));

abstract class RepoRepository {
  /// 指定したリポジトリを取得します。
  Future<Result<List<Repo>>> findByName(String name);

  /// 指定したユーザのリポジトリを取得します。
  Future<Result<List<Repo>>> findByUserName(String userName);

  /// お気に入りのリポジトリを全て取得します。
  Future<Result<List<FavoriteRepo>>> filterFavorites();

  /// 指定したお気に入りのリポジトリを取得します。
  Future<Result<List<FavoriteRepo>>> findFavorite(int id);

  /// お気に入りに追加します。
  Future<Result<int>> addToFavorite(FavoriteRepo repo);

  /// お気に入りから削除します。
  Future<Result<int>> removeFromFavorite(FavoriteRepo repo);
}
