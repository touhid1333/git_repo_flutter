
import 'package:get/get.dart';
import 'package:git_repo_flutter/controllers/base_controller.dart';
import 'package:git_repo_flutter/services/base_controller_binding.dart';
import 'package:git_repo_flutter/services/shared_preff_binding.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
    BaseControllerBinding().dependencies();
    SharedPrefBinding().dependencies();
  }

}