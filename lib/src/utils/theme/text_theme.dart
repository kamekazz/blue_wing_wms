import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme {
  MyTextTheme._(); //To avoid creating instances

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: myDarkColor),
    headline2: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: myDarkColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.normal, color: myDarkColor),
    headline4: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: myDarkColor),
    headline5: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.normal, color: myDarkColor),
    headline6: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: myDarkColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, color: myDarkColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, color: myDarkColor.withOpacity(0.8)),
  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: myWhiteColor),
    headline2: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: myWhiteColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.normal, color: myWhiteColor),
    headline4: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: myWhiteColor),
    headline5: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.normal, color: myWhiteColor),
    headline6: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: myWhiteColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, color: myWhiteColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, color: myWhiteColor.withOpacity(0.8)),
  );
}
