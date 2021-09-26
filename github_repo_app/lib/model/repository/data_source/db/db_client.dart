import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/base_model.dart';
import 'package:github_repo_app/model/repository/data_source/db/table/favorite_repo.dart';
import 'package:github_repo_app/util/failure_reason/failure_reason.dart';
import 'package:github_repo_app/util/result/result.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final dbClientProvider = Provider<DbClient>((ref) => DbClient());

class DbClient {
  DbClient() {
    _open();
  }

  late final Database _database;

  Future<void> _open() async {
    _database = await openDatabase(
      join(await getDatabasesPath(), 'default.db'),
      onCreate: (db, version) {
        return db.execute(
          FavoriteRepoTable.createSql,
        );
      },
      version: 1,
    );
  }

  Future<Result<List<T>>> select<T extends BaseModel>(
      DbSelectParam param, T Function(Map<String, dynamic> map) fromMap) async {
    final List<Map<String, dynamic>> maps = await _database.query(
      param.table,
      distinct: param.distinct,
      columns: param.columns,
      where: param.where,
      whereArgs: param.whereArgs,
      groupBy: param.groupBy,
      having: param.having,
      orderBy: param.orderBy,
      limit: param.limit,
      offset: param.offset,
    );
    return Result.success(maps.map((map) => fromMap(map)).toList());
  }

  Future<Result<int>> insert<T extends BaseModel>(String table, T data) async {
    final id = await _database.insert(
      table,
      data.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    if (id == 0) {
      return const Result.failure(FailureReason.unexpected());
    }
    return Result.success(id);
  }

  Future<Result<int>> delete(DbDeleteParam param) async {
    final rowCount = await _database.delete(
      param.table,
      where: param.where,
      whereArgs: param.whereArgs,
    );
    return Result.success(rowCount);
  }
}

class DbSelectParam {
  String table;
  bool? distinct;
  List<String>? columns;
  String? where;
  List<Object?>? whereArgs;
  String? groupBy;
  String? having;
  String? orderBy;
  int? limit;
  int? offset;

  DbSelectParam(
    this.table, {
    this.distinct,
    this.columns,
    this.where,
    this.whereArgs,
    this.groupBy,
    this.having,
    this.orderBy,
    this.limit,
    this.offset,
  });
}

class DbDeleteParam {
  String table;
  String? where;
  List<Object?>? whereArgs;

  DbDeleteParam(
    this.table, {
    this.where,
    this.whereArgs,
  });
}
