import 'package:blue_winged_wms/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';

/* -- Light & Dark Outlined Button Themes -- */
class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ctSecondaryColor,
      side: const BorderSide(color: ctSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: dtButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: ctWhiteColor,
      side: const BorderSide(color: ctWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: dtButtonHeight),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
  );
}
