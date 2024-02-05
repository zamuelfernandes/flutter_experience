import 'package:flutter/material.dart';

final class FeLabClinicasTheme {
  static const orangeColor = Color(0xFFFFAE45);
  static const lightOrangeColor = Color(0xFFFFEFE9);
  static const blueColor = Color(0xFF01BDD6);
  static const lightGreyColor = Color(0xFF);

  static final _defautInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: lightOrangeColor),
  );

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightOrangeColor,
    ),
    useMaterial3: true,
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: lightOrangeColor,
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: lightOrangeColor,
      labelStyle: const TextStyle(
        color: orangeColor,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
      floatingLabelStyle: const TextStyle(
        color: blueColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: _defautInputBorder,
      focusedBorder: _defautInputBorder,
      errorBorder: _defautInputBorder.copyWith(
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: blueColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );

  static final darkTheme = lightTheme;

  static const titleStyle = TextStyle(
    color: blueColor,
    fontSize: 32,
    fontWeight: FontWeight.w900,
  );

  static const titleSmallStyle = TextStyle(
    color: blueColor,
    fontSize: 24,
    fontWeight: FontWeight.w700,
  );

  static const subtitleStyle = TextStyle(
    color: blueColor,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
