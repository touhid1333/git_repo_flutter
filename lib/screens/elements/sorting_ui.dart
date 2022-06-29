import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_repo_flutter/controllers/base_controller.dart';
import 'package:git_repo_flutter/utils/app_routes.dart';
import 'package:git_repo_flutter/utils/constants.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

showSortingPreferences(BuildContext context, double screenWidth,
    ThemeData themeData, BaseController controller) {
  final sortingOptions = [
    {"name": "stars"},
    {"name": "updated"}
  ];
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: screenWidth * 0.8,
            height: screenWidth * 0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sort",
                  style: themeData.textTheme.headline1,
                ),
                addVerticalSpace(10),
                Expanded(
                  child: ListView.builder(
                      itemCount: sortingOptions.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: InkWell(
                            splashColor: themeData.colorScheme.primary,
                            onTap: () {
                              controller.saveSortPref(
                                  sortingOptions[index]["name"].toString());
                              Get.offAllNamed(AppRoutes.repository);
                            },
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_sharp,
                                      color: themeData.primaryColor,
                                      size: 15,
                                    ),
                                    addHorizontalSpace(10),
                                    Text(
                                      sortingOptions[index]["name"].toString(),
                                      style: themeData.textTheme.headline5,
                                    ),
                                  ],
                                ),
                                addVerticalSpace(10)
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        );
      });
}
