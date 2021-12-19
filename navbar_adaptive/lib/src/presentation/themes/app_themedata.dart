// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Note: Tech Debt details are from this doc:
//        flutter.dev/go/material-theme-system-updates
//
//         hoverColor and focusColor are desktop settings
//
//         canvasColor is backgroundColor of
//         Material ProgressIndicator, OutlineButton, and DropDownButtons.
//
//         backgroundColor is used for background color of
//         LinearProgressIndicator, Stepper, Snackbar, DatePicker, and
//         TimePeicker.
//
//         A Normalized UI-Theme'd Component has:
//           -UI-NamedTheme that is an Inherited Theme
//           -UI-NamedThemeData
//              which can use UINamedThemeData.of(context) if
//              that is at root of Widget Tree.
//
//         ThemeData brightness is just a getter ahd thus set to ColorScheme app
//         brightness.
//
//            primaryColorBrightness ??=
//                  estimateBrightnessForColor(primaryColor);
//            accentColorBrightness ??=
//               estimateBrightnessForColor(accentColor);
//
//        are computed so no one should set them.
//
//       MD3 elevations are from 1-5 for neutral surfaces such as surfaces backgorunds etc.

import 'package:flutter/material.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_theme_colors.dart';

ThemeData appMaterialLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  // this would be set if we are using non-material themes for cupertino widgets.
  //cupertinoOverrideTheme:
  // this only gets set on the Cupertino Widget side as non-Apple devices use the
  // material default
  // materialTapTargetSize:

  // I set it this way to deal with all the variance in screen-sizes
  visualDensity: VisualDensity.adaptivePlatformDensity,

  // need this set as I am using the new Material design 3 widgets
  // remember it also means more setup UI component wise to get
  //  colors right
  useMaterial3: true,

  brightness: Brightness.light,

  // we set this for the base-line app theme colors which uses the MCU package Scheme class
  // to set the ColorScheme. And we can go both ways; one can set this and then go with the
  // default computed ColorScheme from Scheme that ColorScheme class sets or we can set our
  // own and that would come in handy for those devices that do not have dynamic color.
  colorSchemeSeed: appColorSeed,
);

ThemeData appMaterialDarkThemeData = ThemeData();
