import 'package:flutter/material.dart';

TextTheme customTextTheme(Color color) {
  return TextTheme(
    bodyLarge: TextStyle(
      fontSize: 43, // same in both themes
      fontWeight: FontWeight.bold,
      color: color,
    ),
    bodyMedium: TextStyle(
      fontSize: 20, 
      fontWeight: FontWeight.w300,
      color: color
    ),
  
  );
}
