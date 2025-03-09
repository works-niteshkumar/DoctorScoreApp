import 'dart:ui';

import 'package:flutter/material.dart';

import '../app_color.dart';

class CustomTextStyle{

  static TextStyle appBarStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle titleStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
      fontSize: fontSize ?? 24,
      fontWeight: fontWeight ?? FontWeight.bold,
      color: color ?? AppColor.primaryColor,
    );
  }
  static TextStyle subtitleStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? Colors.black,
    );
  }
  static TextStyle boldContentStyle({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
      fontSize: fontSize ?? 18,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color ?? AppColor.primaryColor,
    );
  }
  static TextStyle contentStyle({double? fontSize, Color? color}) {
    return TextStyle(
      fontSize: fontSize ?? 16,
      color: color ?? Colors.black,
    );
  }


}