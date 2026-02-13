import 'dart:ui';

import 'package:flutter/material.dart';

final primaryColorLight = Color(0xFFDDDDDD);
final primaryColorDark = Color(0xFF111111);
final List<Color> newsArticleBGColors = [
  Color(0xFFfff1c5)
];

final lightTheme = ThemeData(
  scaffoldBackgroundColor: primaryColorLight,
  useMaterial3: false,
  appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
  fontFamily: "Poppins",
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: primaryColorDark),
    bodyMedium: TextStyle(color: primaryColorDark),
  ),
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: primaryColorDark,
  useMaterial3: false,
  appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0, iconTheme: IconThemeData(color: Colors.white)),
  fontFamily: "Poppins",
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      color: primaryColorLight,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: primaryColorLight,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      color: primaryColorLight,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium:  TextStyle(
      color: primaryColorLight,
      fontSize:22,
      fontWeight: FontWeight.w600,
    ),
  ),
);
