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


BottomNavigationBarThemeData appMaterialLightBottomNavBarThemeData =
    BottomNavigationBarThemeData(
      backgroundColor: Color(materialLightSystemScheme.background),
      elevation: appElevation,
      selectedIconTheme: appMaterialLightSelectedIconThemeData,
      unselectedIconTheme: appMaterialLightUnselectedIconThemeData,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      enableFeedback: true,
      selectedLabelStyle: appMaterialLightSelectedLabelStyle,
      selectedItemColor: Color(materialLightSystemScheme.primaryContainer),
      unselectedItemColor: Color(materialLightSystemScheme.secondaryContainer),
      unselectedLabelStyle: appMaterialLightUnselectedLabelStyle,
    );

BottomNavigationBarThemeData appMaterialHighContrastBottomNavBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: Color(materialHighContrastSystemScheme.background),
  elevation: appElevation,
  selectedIconTheme: appMaterialHighContrastSelectedIconThemeData,
  unselectedIconTheme: appMaterialHighContrastUnselectedIconThemeData,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
  enableFeedback: true,
  selectedLabelStyle: appMaterialHighContrastSelectedLabelStyle,
  selectedItemColor: Color(materialHighContrastSystemScheme.primaryContainer),
  unselectedItemColor: Color(materialHighContrastSystemScheme.secondaryContainer),
  unselectedLabelStyle: appMaterialHighContrastUnselectedLabelStyle,
);

BottomNavigationBarThemeData appMaterialDarkBottomNavBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: Color(materialDarkSystemScheme.background),
  elevation: appElevation,
  selectedIconTheme: appMaterialDarkSelectedIconThemeData,
  unselectedIconTheme: appMaterialDarkUnselectedIconThemeData,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
  enableFeedback: true,
  selectedLabelStyle: appMaterialDarkSelectedLabelStyle,
  selectedItemColor: Color(materialDarkSystemScheme.primaryContainer),
  unselectedItemColor: Color(materialDarkSystemScheme.secondaryContainer),
  unselectedLabelStyle: appMaterialDarkUnselectedLabelStyle,
);

BottomNavigationBarThemeData appMaterialDarkHighContrastBottomNavBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: Color(materialDarkHighContrastSystemScheme.background),
  elevation: appElevation,
  selectedIconTheme: appMaterialDarkHighContrastSelectedIconThemeData,
  unselectedIconTheme: appMaterialDarkHighContrastUnselectedIconThemeData,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
  enableFeedback: true,
  selectedLabelStyle: appMaterialDarkHighContrastSelectedLabelStyle,
  selectedItemColor: Color(materialDarkHighContrastSystemScheme.primaryContainer),
  unselectedItemColor: Color(materialDarkHighContrastSystemScheme.secondaryContainer),
  unselectedLabelStyle: appMaterialDarkHighContrastUnselectedLabelStyle,
);

BottomNavigationBarThemeData appCupertinoBottomNavBarThemeData =
    BottomNavigationBarThemeData(
  backgroundColor: Color(cupertinoSystemScheme.background),
  elevation: appElevation,
  selectedIconTheme: appCupertinoSelectedIconThemeData,
  unselectedIconTheme: appCupertinoUnselectedIconThemeData,
  showSelectedLabels: true,
  showUnselectedLabels: true,
  type: BottomNavigationBarType.fixed,
  landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
  enableFeedback: true,
  selectedLabelStyle: appCupertinoSelectedLabelStyle,
  selectedItemColor: Color(cupertinoSystemScheme.primaryContainer),
  unselectedItemColor: Color(cupertinoSystemScheme.secondaryContainer),
  unselectedLabelStyle: appCupertinoUnselectedLabelStyle,
);
