import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static TextStyle h1 = GoogleFonts.sourceSansPro(
    fontSize: 40,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle h1_1 = GoogleFonts.sourceSansPro(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static TextStyle small = GoogleFonts.sourceSansPro(
    color: Colors.white,
    fontSize: 16,
  );

  static TextStyle smallGrey = GoogleFonts.sourceSansPro(
    color: bluegray,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle h2 = GoogleFonts.sourceSansPro(
    color: Colors.white,
    fontSize: 16,
  );

  static TextStyle h2blue = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w600,
    color: Styles.blue,
  );

  static TextStyle h3Gray = GoogleFonts.sourceSansPro(
    color: Colors.grey,
    fontSize: 14,
  );

  static TextStyle buttonText = GoogleFonts.sourceSansPro(
    color: Colors.blue,
    fontSize: 20,
  );
  static TextStyle buttonTextWhite = GoogleFonts.sourceSansPro(
    color: Colors.white,
    fontSize: 20,
  );
  static Color blue = const Color.fromRGBO(0, 117, 205, 1.000);
  static Color blueWihite = Color.fromARGB(255, 190, 218, 240);
  static Color blueDark = const Color.fromRGBO(31, 31, 42, 1.000);
  static Color bluegray = const Color.fromRGBO(217, 217, 217, 0.400);
}
