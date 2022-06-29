import 'package:get/get.dart';
import 'package:git_repo_flutter/models/repositories_model.dart';
import 'package:git_repo_flutter/repositories/git_repository.dart';

class BaseController extends GetxController {
  //sort preference
  RxString sortPref = "".obs;

  //all repository
  RxList<Item> items = <Item>[].obs;

  // ignore: unnecessary_cast
  Rx<Item?> selectedItem = (null as Item?).obs;

  //repository
  final GitRepository repositoryInstance = GitRepository();

  //get all list
  getRepositories() async {
    items.value = (await repositoryInstance.getGitRepositoryData(
        "Flutter", sortPref.value, "desc", "50"))!;
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
