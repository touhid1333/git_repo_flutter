import 'package:get/get.dart';
import 'package:git_repo_flutter/controllers/base_controller.dart';
import 'package:git_repo_flutter/utils/constants.dart';

class BaseControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(
      () => BaseController(),
      tag: AppConstants.tagBaseController,
      fenix: true
    );
  }
}
