// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_colors.dart';








NavigationBarThemeData appMaterialLightNavigationBarThemeData =
    NavigationBarThemeData(
  backgroundColor: appMaterialLightColorScheme.background,
  indicatorColor: appMaterialLightColorScheme.primaryContainer,
  labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  labelTextStyle: MaterialStateProperty.all(
    const TextStyle(
      fontStyle: FontStyle.normal,
    ),
  ),
  iconTheme: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return appMaterialLightNavbarIconPressed;
    }
    if (states.contains(MaterialState.focused)) {
      return appMaterialLightNavbarIconFocused;
    }
    if (states.contains(MaterialState.hovered)) {
      return appMaterialLightNavbarIconHovered;
    }
  }),
);

NavigationBarThemeData appMaterialDarkNavigationBarThemeData =
    NavigationBarThemeData(
  backgroundColor: appMaterialDarkColorScheme.background,
  indicatorColor: appMaterialDarkColorScheme.primaryContainer,
  labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
  labelTextStyle: MaterialStateProperty.all(
    const TextStyle(
      fontStyle: FontStyle.normal,
    ),
  ),
  iconTheme: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return appMaterialDarkNavbarIconPressed;
    }
    if (states.contains(MaterialState.focused)) {
      return appMaterialDarkNavbarIconFocused;
    }
    if (states.contains(MaterialState.hovered)) {
      return appMaterialDarkNavbarIconHovered;
    }
  }),
);



IconThemeData appMaterialLightNavbarIconPressed = IconThemeData(
  color: appMaterialLightColorScheme.secondaryContainer,
);

IconThemeData appMaterialLightNavbarIconFocused = IconThemeData(
  color: appMaterialLightColorScheme.inversePrimary,
);

IconThemeData appMaterialLightNavbarIconHovered = IconThemeData(
  color: appMaterialLightColorScheme.primaryContainer,
);

IconThemeData appMaterialDarkNavbarIconPressed = IconThemeData(
  color: appMaterialDarkColorScheme.secondaryContainer,
);

IconThemeData appMaterialDarkNavbarIconFocused = IconThemeData(
  color: appMaterialDarkColorScheme.inversePrimary,
);

IconThemeData appMaterialDarkNavbarIconHovered = IconThemeData(
  color: appMaterialDarkColorScheme.primaryContainer,
);
