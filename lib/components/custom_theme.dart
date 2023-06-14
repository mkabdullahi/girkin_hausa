import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static TextTheme darkTextTheme = TextTheme(
      bodyText1: GoogleFonts.openSans(
          fontSize: 14.5, fontWeight: FontWeight.w700, color: Colors.white),
      headline1: GoogleFonts.openSans(
          fontSize: 33.0, fontWeight: FontWeight.bold, color: Colors.white),
      headline2: GoogleFonts.openSans(
          fontSize: 21.0, fontWeight: FontWeight.w700, color: Colors.white),
      headline3: GoogleFonts.openSans(
          fontSize: 17.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline6: GoogleFonts.openSans(
          fontSize: 21.0, fontWeight: FontWeight.w600, color: Colors.white));

  static ThemeData darkTheme() {
    return ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green,
        ),
        textTheme: darkTextTheme);
  }
}