import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xfffebb1b),
  scaffoldBackgroundColor: const Color(0xff000000),
  iconTheme: const IconThemeData(color: Color(0xfffebb1b)),
  appBarTheme: const AppBarTheme(
    color: Color(0xff181a20),
  ),
  cardColor: const Color(0xff1F222A),
  fontFamily: 'Inter',
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: TextStyle(
        fontSize: 10.0, fontWeight: FontWeight.w600, color: Colors.white),
    bodyMedium: TextStyle(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
  ),
);
