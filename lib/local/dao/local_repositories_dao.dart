
import 'package:floor/floor.dart';
import 'package:git_repo_flutter/local/entity/local_repositories_entity.dart';

@dao
abstract class LocalRepositoriesDao{

  @insert
  Future<void> insertRepository(LocalRepositoryEntity localRepositoryEntity);

  @Query('DELETE FROM LocalRepositoryEntity')
  Future<void> deleteAllRepositories();

  @Query('SELECT * FROM LocalRepositoryEntity ORDER BY stargazersCount DESC')
  Future<List<LocalRepositoryEntity>> getAllRepositories();

}