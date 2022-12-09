import 'package:flutter/material.dart';
import 'package:blue_winged_wms/src/constants/colors.dart';

class MyTextFormFieldTheme {
  MyTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          //If you want circular border -- Use this
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          border: OutlineInputBorder(),
          prefixIconColor: mySecondaryColor,
          floatingLabelStyle: TextStyle(color: mySecondaryColor),
          focusedBorder: OutlineInputBorder(
            // for circular focused Border
            //borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(width: 2, color: mySecondaryColor),
          ));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          //If you want circular border -- Use this
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
          border: OutlineInputBorder(),
          prefixIconColor: myPrimaryColor,
          floatingLabelStyle: TextStyle(color: myPrimaryColor),
          focusedBorder: OutlineInputBorder(
            // for circular focused Border
            //borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(width: 2, color: myPrimaryColor),
          ));
}
