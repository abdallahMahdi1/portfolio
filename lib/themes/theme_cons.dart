import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TextTheme(
      displayMedium:
          GoogleFonts.bebasNeue(color: const Color(0xff6750A4), fontSize: 40),
      bodySmall: GoogleFonts.barlowCondensed(
          fontSize: 23, fontWeight: FontWeight.bold),
      titleMedium: GoogleFonts.barlowCondensed(
          fontSize: 40, fontWeight: FontWeight.bold),
      titleSmall: GoogleFonts.barlowCondensed(
          fontSize: 20, fontWeight: FontWeight.bold),
      bodyLarge: GoogleFonts.barlowCondensed(
          fontSize: 30, fontWeight: FontWeight.bold),
      bodyMedium: GoogleFonts.barlowCondensed(fontSize: 21),
    ));
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(
    displayMedium:
        GoogleFonts.bebasNeue(color: const Color(0xffCFBBFE), fontSize: 40),
    bodySmall:
        GoogleFonts.barlowCondensed(fontSize: 23, fontWeight: FontWeight.bold),
    titleMedium:
        GoogleFonts.barlowCondensed(fontSize: 40, fontWeight: FontWeight.bold),
    titleSmall:
        GoogleFonts.barlowCondensed(fontSize: 20, fontWeight: FontWeight.bold),
    bodyLarge:
        GoogleFonts.barlowCondensed(fontSize: 30, fontWeight: FontWeight.bold),
    bodyMedium: GoogleFonts.barlowCondensed(fontSize: 21),
  ),
);
