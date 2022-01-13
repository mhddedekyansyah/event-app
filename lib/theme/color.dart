import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColor{
  static Color homeAppBar = const Color.fromRGBO(38, 41, 48, 1);
  static Color mainBackgroundColor = const Color.fromRGBO(34, 37,43, 1);
  static Color primaryColor = const Color.fromRGBO(61, 214, 170, 1);
  static Color secondaryColor({double? opacity = 1}){
    return Color.fromRGBO(255, 255, 255, opacity!);
  }
}