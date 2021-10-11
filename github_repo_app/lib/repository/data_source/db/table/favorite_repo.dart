import 'package:github_repo_app/entity/repo/repo.dart';
import 'package:github_repo_app/repository/data_source/db/table/base_model.dart';

class FavoriteRepo extends BaseModel {
  late int id;
  late String name;
  late String ownerName;
  late String avatarUrl;
  late String htmlUrl;

  FavoriteRepo.fromRepo(Repo repo) : super.fromMap(null) {
    id = repo.id;
    name = repo.name;
    ownerName = repo.owner.login;
    avatarUrl = repo.owner.avatarUrl;
    htmlUrl = repo.htmlUrl;
  }

  FavoriteRepo.fromMap(Map<String, dynamic> map) : super.fromMap(map) {
    id = map[FavoriteRepoTable.columnId];
    name = map[FavoriteRepoTable.columnName];
    ownerName = map[FavoriteRepoTable.columnOwnerName];
    avatarUrl = map[FavoriteRepoTable.columnAvatarUrl];
    htmlUrl = map[FavoriteRepoTable.columnHtmlUrl];
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      FavoriteRepoTable.columnId: id,
      FavoriteRepoTable.columnName: name,
      FavoriteRepoTable.columnOwnerName: ownerName,
      FavoriteRepoTable.columnAvatarUrl: avatarUrl,
      FavoriteRepoTable.columnHtmlUrl: htmlUrl,
    };
  }
}

class FavoriteRepoTable {
  static const String tableName = 'favorite_repos';
  static const String columnId = 'id';
  static const String columnName = 'name';
  static const String columnOwnerName = 'owner_name';
  static const String columnAvatarUrl = 'avatar_url';
  static const String columnHtmlUrl = 'html_url';
  static const String createSql =
      'CREATE TABLE $tableName($columnId INTEGER PRIMARY KEY, $columnName TEXT NOT NULL, $columnOwnerName TEXT NOT NULL, $columnAvatarUrl TEXT NOT NULL, $columnHtmlUrl TEXT NOT NULL)';
}
