import 'package:blue_winged_wms/src/constants/colors.dart';
import 'package:flutter/material.dart';

class MyAppbarTheme {
  MyAppbarTheme._();

  static const lightAppBarTheme = AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: myDarkColor, size: 18.0),
      actionsIconTheme: IconThemeData(color: myDarkColor, size: 18.0));

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: myWhiteColor, size: 18.0),
    actionsIconTheme: IconThemeData(color: myWhiteColor, size: 18.0),
  );
}
