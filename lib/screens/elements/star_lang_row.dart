import 'package:flutter/material.dart';
import 'package:git_repo_flutter/utils/widget_function.dart';

class StarLangRow extends StatelessWidget {
  final double screenWidth;
  final String starCount;
  final String languageUsed;
  final Color widgetColor;
  final TextStyle textStyle;

  const StarLangRow(
      {super.key,
      required this.screenWidth,
      required this.starCount,
      required this.languageUsed,
      required this.widgetColor,
      required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: screenWidth * 0.30,
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: widgetColor,
                size: 20,
              ),
              addHorizontalSpace(10),
              Text(
                starCount,
                style: textStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          width: screenWidth * 0.30,
          child: Row(
            children: [
              Icon(
                Icons.language,
                color: widgetColor,
                size: 20,
              ),
              addHorizontalSpace(10),
              Text(
                languageUsed,
                style: textStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
