
import 'package:flutter/material.dart';
import 'package:git_repo_flutter/models/repositories_model.dart';
import 'package:git_repo_flutter/models/sample_data.dart';
import 'package:git_repo_flutter/screens/elements/star_lang_row.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

class TopUI extends StatelessWidget {

  final Item item;

  const TopUI({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: ClipOval(
            child: Image.network(item.owner!.avatarUrl.toString()),
          ),
        ),
        addHorizontalSpace(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.owner!.login.toString(),
              style: themeData.textTheme.headline5,
            ),
            addVerticalSpace(5),
            Text(
              item.fullName.toString(),
              style: themeData.textTheme.subtitle1,
            ),
            addVerticalSpace(5),
            StarLangRow(
                screenWidth: screenSize.width,
                starCount: sampleData[0]["stargazers_count"].toString(),
                languageUsed: sampleData[0]["language"].toString(),
                widgetColor: themeData.colorScheme.onPrimary,
                textStyle: themeData.textTheme.subtitle1!),
          ],
        )
      ],
    );
  }
}