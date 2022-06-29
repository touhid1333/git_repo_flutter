import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:git_repo_flutter/local/entity/local_repositories_entity.dart';
import 'package:git_repo_flutter/local/floor_database.dart';
import 'package:git_repo_flutter/local/shared_preff.dart';
import 'package:git_repo_flutter/models/repositories_model.dart';
import 'package:git_repo_flutter/utils/constants.dart';

class GitRepository {
  final SharedPref sharedPref = Get.find(tag: AppConstants.tagPref);

  //get all repository list items
  getGitRepositoryData(
      String queryText, String sortType, String order, String perPage) async {
    try {
      dio.Dio dioInstance = dio.Dio();
      dio.Response response;
      String endUrl =
          "search/repositories?q=$queryText&sort=$sortType&order=$order&per_page=$perPage";
      response = await dioInstance.get(AppConstants.baseURl + endUrl);
      if (response.statusCode == 200) {
        var responseConverted = Repositories.fromJson(response.data);
        List<Item> items = responseConverted.items!;
        await deleteAll();
        for (var element in items) {
          if (element != null) {
            LocalRepositoryEntity localRepositoryEntity = LocalRepositoryEntity(
                id: element.id!,
                fullName: element.fullName!,
                description: element.description ?? "",
                stargazersCount: element.stargazersCount!,
                login: element.owner!.login!,
                avatarUrl: element.owner!.avatarUrl!,
                updatedAt: element.updatedAt.toString());
            await addRepositoryToLocal(localRepositoryEntity);
          }
        }
        //return responseConverted.items;
      } /*else {
        return null;
      }*/
    } on dio.DioError catch (e) {
      print(e.message);
      //return null;
    }
  }

  //get sort pref
  Future<String> getSortPref() async {
    String sortPref = await sharedPref.getSortPref(AppConstants.keySortPref);
    if (sortPref == "null") {
      return "stars";
    } else {
      return sortPref;
    }
  }

  //save sort preff
  saveSortPref(String sortType) {
    sharedPref.saveSortPref(AppConstants.keySortPref, sortType);
  }

  addRepositoryToLocal(LocalRepositoryEntity localRepositoryEntity) async {
    final database =
        await $FloorAppFloorDatabase.databaseBuilder("app_db").build();
    await database.localDao.insertRepository(localRepositoryEntity);
  }

  Future<List<LocalRepositoryEntity>> getAllRepositoryFromLocal() async {
    final database =
        await $FloorAppFloorDatabase.databaseBuilder("app_db").build();
    return await database.localDao.getAllRepositories();
  }

  deleteAll() async {
    final database =
        await $FloorAppFloorDatabase.databaseBuilder("app_db").build();
    await database.localDao.deleteAllRepositories();
  }
}
