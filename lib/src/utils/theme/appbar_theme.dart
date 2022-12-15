import 'package:blue_wing_wms/src/constants/colors.dart';
import 'package:flutter/material.dart';

class MyAppbarTheme {
  MyAppbarTheme._();

  static const lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: ctDarkColor, size: 18.0),
      actionsIconTheme: IconThemeData(color: ctDarkColor, size: 18.0));

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: ctWhiteColor, size: 18.0),
    actionsIconTheme: IconThemeData(color: ctWhiteColor, size: 18.0),
  );
}
