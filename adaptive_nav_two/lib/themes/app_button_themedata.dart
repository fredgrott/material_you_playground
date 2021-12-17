// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:adaptive_nav_two/themes/app_colors.dart';
import 'package:flutter/material.dart';


ButtonThemeData appMaterialLightButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsetsGeometry.infinity,
  // per MD3 buttons are rounded rectangles
  shape: appRoundedRectangleButtonBorder,
  colorScheme: materialLightColorScheme,
);

ButtonThemeData appMaterialHighContrastButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsetsGeometry.infinity,
  // per MD3 buttons are rounded rectangles
  shape: appRoundedRectangleButtonBorder,
  colorScheme: materialHighContrastColorScheme,
);

ButtonThemeData appMaterialDarkButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsetsGeometry.infinity,
  //per md3 buttons are rounded rectangles
  shape: appRoundedRectangleButtonBorder,
  colorScheme: materialDarkColorScheme,
);

ButtonThemeData appMaterialDarkHighContrastButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsetsGeometry.infinity,
  //per md3 buttons are rounded rectangles
  shape: appRoundedRectangleButtonBorder,
  colorScheme: materialDarkHighContrastColorScheme,
);

ButtonThemeData appCupertinoButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.primary,
  padding: EdgeInsetsGeometry.infinity,
  // per md3 buttons are rounded rectangles
  shape: appRoundedRectangleButtonBorder,
  colorScheme: cupertinoColorScheme,
);


RoundedRectangleBorder appRoundedRectangleButtonBorder = const RoundedRectangleBorder(
   // ignore: avoid_redundant_argument_values
   side: BorderSide.none,
   borderRadius: BorderRadius.all(Radius.circular(8)),
);
