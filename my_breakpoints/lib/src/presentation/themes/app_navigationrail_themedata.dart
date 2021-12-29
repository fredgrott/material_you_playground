// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:my_breakpoints/src/presentation/themes/app_theme_colors.dart';




NavigationRailThemeData appMaterialLightNavigationRailThemeData =
    NavigationRailThemeData(
  backgroundColor: appMaterialLightColorScheme.background,
  elevation: 4,
  labelType: NavigationRailLabelType.all,
  useIndicator: true,
  unselectedLabelTextStyle: appMaterialLightUnselectedTextStyle,
  selectedLabelTextStyle: appMaterialLightSelectedTextStyle,
  selectedIconTheme: appMaterialLightSelectedIconThemeData,
  unselectedIconTheme: appMaterialLightUnselectedIconThemeData,
);

NavigationRailThemeData appMaterialDarkNavigationRailThemeData =
    NavigationRailThemeData(
  backgroundColor: appMaterialLightColorScheme.background,
  elevation: 4,
  labelType: NavigationRailLabelType.all,
  useIndicator: true,
  unselectedLabelTextStyle: appMaterialDarkUnselectedTextStyle,
  selectedLabelTextStyle: appMaterialDarkSelectedTextStyle,
  selectedIconTheme: appMaterialDarkSelectedIconThemeData,
  unselectedIconTheme: appMaterialDarkUnselectedIconThemeData,
);



TextStyle appMaterialLightUnselectedTextStyle = TextStyle(
  color: appMaterialLightColorScheme.inverseSurface,
);

TextStyle appMaterialDarkUnselectedTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.inverseSurface,
);

TextStyle appCupertinoUnselectedTextStyle = TextStyle(
  color: appCupertinoColorScheme.inverseSurface,
);

TextStyle appMaterialLightSelectedTextStyle = TextStyle(
  color: appMaterialLightColorScheme.primaryContainer,
);

TextStyle appMaterialDarkSelectedTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.primaryContainer,
);



IconThemeData appMaterialLightSelectedIconThemeData = IconThemeData(
  color: appMaterialLightColorScheme.primaryContainer,
);

IconThemeData appMaterialDarkSelectedIconThemeData = IconThemeData(
  color: appMaterialDarkColorScheme.primaryContainer,
);


IconThemeData appMaterialLightUnselectedIconThemeData = IconThemeData(
  color: appMaterialLightColorScheme.inverseSurface,
);

IconThemeData appMaterialDarkUnselectedIconThemeData = IconThemeData(
  color: appMaterialDarkColorScheme.inverseSurface,
);

