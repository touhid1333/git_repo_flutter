import 'package:get/get.dart';
import 'package:git_repo_flutter/local/floor_database.dart';
import 'package:git_repo_flutter/utils/constants.dart';

class FloorBinding extends Bindings {
  @override
  void dependencies() {
    Get.putAsync(
        () async =>
            await $FloorAppFloorDatabase.databaseBuilder("app_db").build(),
        tag: AppConstants.tagFloor,
        permanent: true);
  }
}
