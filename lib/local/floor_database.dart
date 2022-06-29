import 'package:floor/floor.dart';
import 'package:git_repo_flutter/local/dao/local_repositories_dao.dart';
import 'package:git_repo_flutter/local/entity/local_repositories_entity.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';

 part 'floor_database.g.dart';

@Database(version: 1, entities: [LocalRepositoryEntity])
abstract class AppFloorDatabase extends FloorDatabase {
  LocalRepositoriesDao get localDao;
}
