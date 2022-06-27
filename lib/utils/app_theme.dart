import 'dart:ui';
import 'package:flutter/material.dart';

//screen width
final double _screenWidth = window.physicalSize.width;

//colors
const Color customPaste = Color(0xFFA5D3FF);
const Color customBlue = Color(0xFF47A6DA);
const Color customGray = Color(0xFF919292);
const Color customWhite = Colors.white;
const Color customBlack = Colors.black;
const Color customRed = Color(0xFFC5032B);

//color scheme
const ColorScheme _colorSchemeLight = ColorScheme(
    brightness: Brightness.light,
    primary: customPaste,
    onPrimary: customBlack,
    secondary: customBlue,
    onSecondary: customBlack,
    error: customRed,
    onError: customWhite,
    background: customWhite,
    onBackground: customGray,
    surface: customPaste,
    onSurface: customBlack);

//text theme default
const TextTheme _defaultTextTheme = TextTheme(
  headline1:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 26),
  headline2:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline3:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline4:
      TextStyle(color: customBlue, fontWeight: FontWeight.w700, fontSize: 16),
  headline5:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 14),
  headline6:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 12),
  bodyText1: TextStyle(
      color: customBlack,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  bodyText2: TextStyle(
      color: customGray,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5),
  subtitle1:
      TextStyle(color: customBlack, fontWeight: FontWeight.w400, fontSize: 12),
  subtitle2:
      TextStyle(color: customGray, fontWeight: FontWeight.w400, fontSize: 12),
);

//small text theme
const TextTheme _smallTextTheme = TextTheme(
  headline1:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: customBlue, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: customBlack, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
      color: customBlack,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  bodyText2: TextStyle(
      color: customGray,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      height: 1.5),
  subtitle1:
      TextStyle(color: customBlack, fontWeight: FontWeight.w400, fontSize: 10),
  subtitle2:
      TextStyle(color: customGray, fontWeight: FontWeight.w400, fontSize: 10),
);

//app theme class
class AppTheme {
  final lightTheme = ThemeData(
      colorScheme: _colorSchemeLight,
      textTheme: _screenWidth < 500 ? _smallTextTheme : _defaultTextTheme,
      fontFamily: "Roboto");
}
