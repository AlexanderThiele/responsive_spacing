import 'package:flutter/material.dart';

extension ThemeExtension on ThemeData {
  static bool responsiveValues = true;

  set responsiveSpacing(bool test){
    responsiveValues = false;
  }
}