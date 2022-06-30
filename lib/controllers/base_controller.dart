import 'package:get/get.dart';
import 'package:git_repo_flutter/local/entity/local_repositories_entity.dart';
import 'package:git_repo_flutter/models/repositories_model.dart';
import 'package:git_repo_flutter/repositories/git_repository.dart';
import 'package:git_repo_flutter/utils/convert_utils.dart';

class BaseController extends GetxController {
  //sort preference
  RxString sortPref = "".obs;

  //all repository
  RxList<LocalRepositoryEntity> items = <LocalRepositoryEntity>[].obs;

  // ignore: unnecessary_cast
  Rx<LocalRepositoryEntity?> selectedItem = (null as LocalRepositoryEntity?).obs;

  //repository
  final GitRepository repositoryInstance = GitRepository();

  //get all list
  getRepositories() async {
    if(await ConvertUtils().checkInternetConnection() == true){
      await repositoryInstance.getGitRepositoryData(
          "Flutter", sortPref.value, "desc", "50");
    }
    items.value = await repositoryInstance.getAllRepositoryFromLocal();
  }

  //get sort pref
  getSortPref() async {
    sortPref.value = await repositoryInstance.getSortPref();
  }

  //save sort pref
  saveSortPref(String sortType) {
    repositoryInstance.saveSortPref(sortType);
  }
}
