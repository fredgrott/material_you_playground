import 'package:adaptive_nav_two/defaultscaffolddemo.dart';
import 'package:adaptive_nav_two/themes/app_theme_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const DefaultScaffoldDemo(),
    theme: appLightMaterialThemeData,
    darkTheme: appDarkMaterialThemeData,
    highContrastTheme: appHighContrastMaterialThemeData,
    highContrastDarkTheme: appDarkHighContrastMaterialThemeData,
    ),);
}

