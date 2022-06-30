
import 'package:flutter/material.dart';
import 'package:git_repo_flutter/local/entity/local_repositories_entity.dart';
import 'package:git_repo_flutter/models/sample_data.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

class BottomUI extends StatelessWidget {

  final LocalRepositoryEntity item;

  const BottomUI({super.key, required this.item});



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
                  item.description,
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
                  item.updatedAt,
                  style: themeData.textTheme.subtitle1,
                  textAlign: TextAlign.justify,
                )),
          ],
        ),
      ],
    );
  }
}