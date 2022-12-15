import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme {
  MyTextTheme._(); //To avoid creating instances

  /* -- Light Text Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: ctDarkColor),
    headline2: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: ctDarkColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.normal, color: ctDarkColor),
    headline4: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ctDarkColor),
    headline5: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.normal, color: ctDarkColor),
    headline6: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: ctDarkColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, color: ctDarkColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, color: ctDarkColor.withOpacity(0.8)),
  );

  /* -- Dark Text Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: ctWhiteColor),
    headline2: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: ctWhiteColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.normal, color: ctWhiteColor),
    headline4: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: ctWhiteColor),
    headline5: GoogleFonts.poppins(
        fontSize: 18.0, fontWeight: FontWeight.normal, color: ctWhiteColor),
    headline6: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.w600, color: ctWhiteColor),
    bodyText1: GoogleFonts.poppins(fontSize: 14.0, color: ctWhiteColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, color: ctWhiteColor.withOpacity(0.8)),
  );
}
