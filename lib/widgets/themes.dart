import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: darkBluishColor,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: darkBluishColor),
          colorScheme: ColorScheme.fromSwatch(accentColor: darkBluishColor),
        appBarTheme: AppBarTheme(
            color: creamColor,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle: TextStyle(color: Colors.black)),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primaryColor: creamColor,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
          ),
        colorScheme: ColorScheme.fromSwatch(accentColor: Colors.white),
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.black,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.white),
            titleTextStyle: TextStyle(color: Colors.white)),
      );

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo500;
}
