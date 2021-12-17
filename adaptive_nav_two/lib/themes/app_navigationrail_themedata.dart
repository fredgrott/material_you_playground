// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:adaptive_nav_two/themes/app_colors.dart';
import 'package:adaptive_nav_two/themes/app_selected_icon_themedata.dart';
import 'package:adaptive_nav_two/themes/app_selectedlabelstyle.dart';
import 'package:adaptive_nav_two/themes/app_theme_vars.dart';
import 'package:adaptive_nav_two/themes/app_unselectedicon_themedata.dart';
import 'package:adaptive_nav_two/themes/app_unselectedlabelstyle.dart';

import 'package:flutter/material.dart';


NavigationRailThemeData appMaterialLightNavRailThemeData =
    NavigationRailThemeData(
      backgroundColor: Color(materialLightSystemScheme.background),
      elevation: appElevation,
      unselectedLabelTextStyle: appMaterialLightUnselectedLabelStyle,
      selectedLabelTextStyle: appMaterialLightSelectedLabelStyle,
      unselectedIconTheme: appMaterialLightUnselectedIconThemeData,
      selectedIconTheme: appMaterialLightSelectedIconThemeData,
      labelType: NavigationRailLabelType.all,
    );

NavigationRailThemeData appMaterialHighContrastNavRailThemeData =
    NavigationRailThemeData(
  backgroundColor: Color(materialLightSystemScheme.background),
  elevation: appElevation,
  unselectedLabelTextStyle: appMaterialHighContrastUnselectedLabelStyle,
  selectedLabelTextStyle: appMaterialHighContrastSelectedLabelStyle,
  unselectedIconTheme: appMaterialHighContrastUnselectedIconThemeData,
  selectedIconTheme: appMaterialHighContrastSelectedIconThemeData,
  labelType: NavigationRailLabelType.all,
);

NavigationRailThemeData appMaterialDarkNavRailThemeData =
    NavigationRailThemeData(
  backgroundColor: Color(materialDarkSystemScheme.background),
  elevation: appElevation,
  unselectedLabelTextStyle: appMaterialDarkUnselectedLabelStyle,
  selectedLabelTextStyle: appMaterialDarkSelectedLabelStyle,
  unselectedIconTheme: appMaterialDarkUnselectedIconThemeData,
  selectedIconTheme: appMaterialDarkSelectedIconThemeData,
  labelType: NavigationRailLabelType.all,
);

NavigationRailThemeData appMaterialDarkHighContrastNavRailThemeData =
    NavigationRailThemeData(
  backgroundColor: Color(materialDarkSystemScheme.background),
  elevation: appElevation,
  unselectedLabelTextStyle: appMaterialDarkHighContrastUnselectedLabelStyle,
  selectedLabelTextStyle: appMaterialDarkHighContrastSelectedLabelStyle,
  unselectedIconTheme: appMaterialDarkHighContrastUnselectedIconThemeData,
  selectedIconTheme: appMaterialDarkHighContrastSelectedIconThemeData,
  labelType: NavigationRailLabelType.all,
);

NavigationRailThemeData appCupertinoNavRailThemeData =
    NavigationRailThemeData(
  backgroundColor: Color(cupertinoSystemScheme.background),
  elevation:appElevation,
  unselectedLabelTextStyle: appCupertinoUnselectedLabelStyle,
  selectedLabelTextStyle: appCupertinoSelectedLabelStyle,
  unselectedIconTheme: appCupertinoUnselectedIconThemeData,
  selectedIconTheme: appCupertinoSelectedIconThemeData,
  labelType: NavigationRailLabelType.all,
);
