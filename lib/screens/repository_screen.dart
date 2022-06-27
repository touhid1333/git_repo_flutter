import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_repo_flutter/utils/constants.dart';

class RepositoryScreen extends StatelessWidget {
  const RepositoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: themeData.colorScheme.primary,
        body: SafeArea(
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: AppConstants.topPadding,
                      left: AppConstants.sidePadding,
                      right: AppConstants.sidePadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Repositories",
                        style: themeData.textTheme.headline1,
                      ),
                      Icon(Icons.filter_alt_outlined),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: AppConstants.topPadding),
                    child: Container(
                      width: screenSize.width,
                      decoration: BoxDecoration(
                          color: themeData.colorScheme.background,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
