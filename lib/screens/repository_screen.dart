import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_repo_flutter/models/sample_data.dart';
import 'package:git_repo_flutter/screens/elements/repository_tile.dart';
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
                // page ui : top
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
                      InkWell(
                        onTap: () {},
                        splashColor: themeData.colorScheme.secondary,
                        customBorder: const CircleBorder(),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: themeData.colorScheme.onBackground
                                .withOpacity(0.3),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.filter_alt_outlined,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //page ui : bottom
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: AppConstants.sidePadding,
                            left: AppConstants.sidePadding,
                            right: AppConstants.sidePadding),
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: sampleData.length,
                            itemBuilder: (context, index) {
                              return RepositoryTile(
                                  itemData: sampleData[index]);
                            }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
