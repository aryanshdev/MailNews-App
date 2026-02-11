import 'dart:ui';

import 'package:flutter/material.dart';

final primaryColorLight = Color(0xFFDDDDDD);
final primaryColorDark = Color(0xFF111111);

final lightTheme = ThemeData(
  scaffoldBackgroundColor: primaryColorLight,
  useMaterial3: false,
  appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),  fontFamily: "Poppins",
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: primaryColorDark),
      bodyMedium: TextStyle(color: primaryColorDark),
    )
);

final darkTheme = ThemeData(
  scaffoldBackgroundColor: primaryColorDark,
  useMaterial3: false,
  appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
  fontFamily: "Poppins",
    textTheme: TextTheme(
    bodyLarge: TextStyle(color: primaryColorLight),
    bodyMedium: TextStyle(color: primaryColorLight),
)
);
