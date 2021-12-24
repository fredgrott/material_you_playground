// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_icon_theme.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_theme_colors.dart';



AppBarTheme appMaterialLightAppBarTheme = AppBarTheme(
  // under MD3 it's not a full color fill and no shadows for
  // navbars
  backgroundColor: appMaterialLightColorScheme.secondaryContainer,
  elevation: 4,
  shadowColor: Colors.transparent,
  iconTheme: appMaterialLightIconThemeData,
  actionsIconTheme: appMaterialLightIconThemeData,
  centerTitle: true,
  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
);

AppBarTheme appMaterialDarkAppBarTheme = AppBarTheme(
  // under MD3 it's not a full color fill and no shadows for
  // navbars
  backgroundColor: appMaterialDarkColorScheme.secondaryContainer,
  elevation: 4,
  shadowColor: Colors.transparent,
  iconTheme: appMaterialDarkIconThemeData,
  actionsIconTheme: appMaterialDarkIconThemeData,
  centerTitle: true,
  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
);

AppBarTheme appCupertinoAppBarTheme = AppBarTheme(
  // under MD3 it's not a full color fill and no shadows for
  // navbars
  // per Apple HUI, need some opacity
  backgroundColor: appCupertinoColorScheme.secondaryContainer.withOpacity(0.4),
  elevation: 4,
  shadowColor: Colors.transparent,
  iconTheme: appCupertinoIconThemeData,
  actionsIconTheme: appCupertinoIconThemeData,
  centerTitle: true,
  titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
);
