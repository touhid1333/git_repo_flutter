import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_repo_flutter/utils/app_pages.dart';
import 'package:git_repo_flutter/utils/app_routes.dart';
import 'package:git_repo_flutter/utils/app_theme.dart';

void main() {
  runApp(const GitRepoApp());
}

class GitRepoApp extends StatelessWidget {
  const GitRepoApp({Key? key}) : super(key: key);

  // This widget is the root.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Git Repositories',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      initialRoute: AppRoutes.repository,
      getPages: AppPages.pages,
    );
  }
}
