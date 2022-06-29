// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floor_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppFloorDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppFloorDatabaseBuilder databaseBuilder(String name) =>
      _$AppFloorDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppFloorDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppFloorDatabaseBuilder(null);
}

class _$AppFloorDatabaseBuilder {
  _$AppFloorDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppFloorDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppFloorDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppFloorDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppFloorDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppFloorDatabase extends AppFloorDatabase {
  _$AppFloorDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  LocalRepositoriesDao? _localDaoInstance;

  Future<sqflite.Database> open(String path, List<Migration> migrations,
      [Callback? callback]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `LocalRepositoryEntity` (`id` INTEGER NOT NULL, `fullName` TEXT NOT NULL, `description` TEXT NOT NULL, `stargazersCount` INTEGER NOT NULL, `login` TEXT NOT NULL, `avatarUrl` TEXT NOT NULL, `updatedAt` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  LocalRepositoriesDao get localDao {
    return _localDaoInstance ??=
        _$LocalRepositoriesDao(database, changeListener);
  }
}

class _$LocalRepositoriesDao extends LocalRepositoriesDao {
  _$LocalRepositoriesDao(this.database, this.changeListener)
      : _queryAdapter = QueryAdapter(database),
        _localRepositoryEntityInsertionAdapter = InsertionAdapter(
            database,
            'LocalRepositoryEntity',
            (LocalRepositoryEntity item) => <String, Object?>{
                  'id': item.id,
                  'fullName': item.fullName,
                  'description': item.description,
                  'stargazersCount': item.stargazersCount,
                  'login': item.login,
                  'avatarUrl': item.avatarUrl,
                  'updatedAt': item.updatedAt
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<LocalRepositoryEntity>
      _localRepositoryEntityInsertionAdapter;

  @override
  Future<void> deleteAllRepositories() async {
    await _queryAdapter.queryNoReturn('DELETE FROM LocalRepositoryEntity');
  }

  @override
  Future<List<LocalRepositoryEntity>> getAllRepositories() async {
    return _queryAdapter.queryList(
        'SELECT * FROM LocalRepositoryEntity ORDER BY stargazersCount DESC',
        mapper: (Map<String, Object?> row) => LocalRepositoryEntity(
            id: row['id'] as int,
            fullName: row['fullName'] as String,
            description: row['description'] as String,
            stargazersCount: row['stargazersCount'] as int,
            login: row['login'] as String,
            avatarUrl: row['avatarUrl'] as String,
            updatedAt: row['updatedAt'] as String));
  }

  @override
  Future<void> insertRepository(
      LocalRepositoryEntity localRepositoryEntity) async {
    await _localRepositoryEntityInsertionAdapter.insert(
        localRepositoryEntity, OnConflictStrategy.abort);
  }
}
