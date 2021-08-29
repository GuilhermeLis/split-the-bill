import 'package:flutter/material.dart';
import 'package:split_the_bill/theme/color.dart';

ThemeData theme = ThemeData(
  fontFamily: 'Comfortaa',
  primaryColor: ColorPalette.primaryColor,
  buttonTheme: ButtonThemeData(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor:
          MaterialStateProperty.all<Color>(ColorPalette.primaryColor),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle>(
        TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
          color: ColorPalette.primaryColor,
        ),
      ),
      side: MaterialStateProperty.all<BorderSide>(
        BorderSide(
          width: 2,
          color: ColorPalette.primaryColor,
        ),
      ),
    ),
  ),
  textTheme: TextTheme(
    headline1: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: ColorPalette.primaryColor,
    ),
  ),
);
