import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_repo_flutter/screens/elements/star_lang_row.dart';
import 'package:git_repo_flutter/utils/app_routes.dart';
import 'package:git_repo_flutter/utils/constants.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

class RepositoryTile extends StatelessWidget {
  final dynamic itemData;

  const RepositoryTile({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return Material(
      child: InkWell(
        onTap: () {
          //item click logic
          Get.toNamed(AppRoutes.repositoryDetail);
        },
        splashColor: themeData.colorScheme.secondary,
        child: Column(
          children: [
            Container(
              width: screenWidth,
              decoration: BoxDecoration(
                color: themeData.colorScheme.onBackground.withOpacity(0.2),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(AppConstants.sidePadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(Icons.bookmarks_sharp),
                        addHorizontalSpace(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemData["full_name"].toString(),
                              style: themeData.textTheme.headline4,
                            ),
                            addVerticalSpace(10),
                            StarLangRow(
                                screenWidth: screenWidth,
                                starCount:
                                    itemData["stargazers_count"].toString(),
                                languageUsed: itemData["language"].toString(),
                                widgetColor: themeData.colorScheme.onBackground,
                                textStyle: themeData.textTheme.bodyText2!)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            addVerticalSpace(10),
          ],
        ),
      ),
    );
  }
}
