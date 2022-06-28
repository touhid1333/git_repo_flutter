
import 'package:flutter/material.dart';
import 'package:git_repo_flutter/models/sample_data.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

class BottomUI extends StatelessWidget {
  const BottomUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              child: Text(
                "Description:",
                style: themeData.textTheme.headline6,
              ),
            ),
            Expanded(
                child: Text(
                  sampleData[0]["description"].toString(),
                  style: themeData.textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                )),
          ],
        ),
        addVerticalSpace(10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 80,
              child: Text(
                "Updated:",
                style: themeData.textTheme.headline6,
              ),
            ),
            Expanded(
                child: Text(
                  sampleData[0]["updated_at"].toString(),
                  style: themeData.textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                )),
          ],
        ),
      ],
    );
  }
}