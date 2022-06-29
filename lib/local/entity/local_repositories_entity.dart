import 'package:floor/floor.dart';

@entity
class LocalRepositoryEntity {
  @primaryKey
  int id;
  String fullName;
  String description;
  int stargazersCount;
  String login;
  String avatarUrl;
  String updatedAt;

  LocalRepositoryEntity(
      {required this.id,
      required this.fullName,
      required this.description,
      required this.stargazersCount,
      required this.login,
      required this.avatarUrl,
      required this.updatedAt});
}
