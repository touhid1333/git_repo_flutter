import 'package:flutter/material.dart';
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
        onTap: () {},
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
                            Row(
                              children: [
                                SizedBox(
                                  width: screenWidth * 0.33,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: themeData.colorScheme.onBackground,
                                      ),
                                      addHorizontalSpace(10),
                                      Text(
                                        itemData["stargazers_count"].toString(),
                                        style: themeData.textTheme.bodyText2,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.33,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.language,
                                        color: themeData.colorScheme.onBackground,
                                      ),
                                      addHorizontalSpace(10),
                                      Text(
                                        itemData["language"].toString(),
                                        style: themeData.textTheme.bodyText2,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
