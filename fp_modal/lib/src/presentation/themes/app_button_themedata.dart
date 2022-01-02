// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:fp_modal/src/presentation/themes/app_squircle.dart';
import 'package:fp_modal/src/presentation/themes/app_theme_colors.dart';
import 'package:fp_modal/src/presentation/themes/app_theme_data_defaults.dart';



ButtonThemeData materialLightButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.normal,
  //textTheme: ButtonTextTheme.primary,
  // ignore: avoid_redundant_argument_values
  layoutBehavior: ButtonBarLayoutBehavior.padded,
  // ignore: avoid_redundant_argument_values
  minWidth: 88,
  // ignore: avoid_redundant_argument_values
  height: 36,
  padding: EdgeInsetsGeometry.infinity,
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  buttonColor: appMaterialLightColorScheme.primary,
  disabledColor: Colors.grey,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  colorScheme: appMaterialLightColorScheme,

);

ButtonThemeData materialDarkButtonThemeData = ButtonThemeData(
  textTheme: ButtonTextTheme.normal,
  //textTheme: ButtonTextTheme.primary,
  // ignore: avoid_redundant_argument_values
  layoutBehavior: ButtonBarLayoutBehavior.padded,
  // ignore: avoid_redundant_argument_values
  minWidth: 88,
  // ignore: avoid_redundant_argument_values
  height: 36,
  padding: EdgeInsetsGeometry.infinity,
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
  buttonColor: appMaterialDarkColorScheme.primary,
  disabledColor: Colors.grey,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  highlightColor: appMaterialDarkHighLightColor,
  splashColor: appMaterialDarkSplashColor,
  colorScheme: appMaterialDarkColorScheme,
);
