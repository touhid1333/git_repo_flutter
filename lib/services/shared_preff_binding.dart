import 'package:get/get.dart';
import 'package:git_repo_flutter/local/shared_preff.dart';
import 'package:git_repo_flutter/utils/constants.dart';

class SharedPrefBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SharedPref>(() => SharedPref(),
        tag: AppConstants.tagPref, fenix: true);
  }
}
