import 'package:flutter/material.dart';
import './colors.dart';
import './text_styles.dart';

final ThemeData defaultTheme = buildDefaultTheme();

ThemeData buildDefaultTheme() {
  return ThemeData(
      primarySwatch: Colors.green,
      primaryColor: Colors.green,
      colorScheme: ColorScheme.light(
        secondary: Colors.orange,
        primary: Colors.green,
      ),
      scaffoldBackgroundColor: bgColor,
      appBarTheme: AppBarTheme(),
      textTheme: TextTheme(
        button: buttonText,
      ),
      buttonTheme: ButtonThemeData(
        minWidth: 150,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 32.0,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        contentPadding: const EdgeInsets.all(16.0),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
      ));
}
