
import 'package:get/get.dart';
import 'package:git_repo_flutter/screens/repository_detail_screen.dart';
import 'package:git_repo_flutter/screens/repository_screen.dart';
import 'package:git_repo_flutter/utils/app_routes.dart';

class AppPages{

  static final pages = [
    GetPage(
      name: AppRoutes.repository,
      page: () => RepositoryScreen(),
      transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.repositoryDetail,
      page: () => RepositoryDetailScreen(),
      transition: Transition.circularReveal,
    ),
  ];
}