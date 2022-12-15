import 'package:flutter/material.dart';
import 'package:blue_wing_wms/src/constants/colors.dart';

class MyTextFormFieldTheme {
  MyTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          //If you want circular border -- Use this
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          border: OutlineInputBorder(),
          prefixIconColor: ctSecondaryColor,
          floatingLabelStyle: TextStyle(color: ctSecondaryColor),
          focusedBorder: OutlineInputBorder(
            // for circular focused Border
            //borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(width: 2, color: ctSecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          //If you want circular border -- Use this
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          border: OutlineInputBorder(),
          prefixIconColor: ctPrimaryColor,
          floatingLabelStyle: TextStyle(color: ctPrimaryColor),
          focusedBorder: OutlineInputBorder(
            // for circular focused Border
            //borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(width: 2, color: ctPrimaryColor),
          ));
}
