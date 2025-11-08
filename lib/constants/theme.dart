import 'package:flutter/material.dart';
import 'package:notesapplication/constants/appcolors.dart';
import 'package:notesapplication/constants/custom_text_theme.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: Colors.black,
  appBarTheme: AppBarTheme(
    backgroundColor:  Colors.white,
  ),
  scaffoldBackgroundColor: Appcolors.primaryLightModeColor,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepPurple,
  ),
  textTheme: customTextTheme(Appcolors.lightThemeText)
);

final ThemeData darkTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Appcolors.primaryDarkModeColor,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Appcolors.primaryDarkModeColor,
  ),
  appBarTheme: AppBarTheme(
     backgroundColor:  Appcolors.primaryDarkModeColor,
  ),
  textTheme: customTextTheme(Appcolors.darkThemeText)
);

