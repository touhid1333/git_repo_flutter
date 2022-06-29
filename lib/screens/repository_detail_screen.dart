import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_repo_flutter/controllers/base_controller.dart';
import 'package:git_repo_flutter/screens/elements/details_bottom_ui.dart';
import 'package:git_repo_flutter/screens/elements/details_top_ui.dart';
import 'package:git_repo_flutter/utils/constants.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

class RepositoryDetailScreen extends StatelessWidget {
  const RepositoryDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    final BaseController baseController = Get.find(tag: AppConstants.tagBaseController);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: Container(
            height: screenSize.height,
            width: screenSize.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: AppConstants.topPadding,
                  horizontal: AppConstants.sidePadding),
              child: Obx(() => baseController.selectedItem.value != null
                  ? Column(
                      children: [
                        // detail ui: top => image, names, star and lang
                        TopUI(item: baseController.selectedItem.value!),
                        addVerticalSpace(10),
                        Divider(
                          height: 1,
                          color: themeData.colorScheme.onBackground
                              .withOpacity(0.5),
                        ),
                        addVerticalSpace(10),
                        //detail ui: bottom => description and last updated
                        const BottomUI(),
                      ],
                    )
                  : addVerticalSpace(0)),
            ),
          )),
    );
  }
}
