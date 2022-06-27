import 'package:flutter/material.dart';
import 'package:git_repo_flutter/screens/repository_screen.dart';
import 'package:git_repo_flutter/utils/app_theme.dart';

void main() {
  runApp(const GitRepoApp());
}

class GitRepoApp extends StatelessWidget {
  const GitRepoApp({Key? key}) : super(key: key);

  // This widget is the root.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Git Repositories',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme,
      home: RepositoryScreen(),
    );
  }
}
