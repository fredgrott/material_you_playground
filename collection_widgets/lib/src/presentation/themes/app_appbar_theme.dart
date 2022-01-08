// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:collection_widgets/src/presentation/themes/app_icon_theme.dart';
import 'package:collection_widgets/src/presentation/themes/app_squircle.dart';
import 'package:collection_widgets/src/presentation/themes/app_theme_colors.dart';
import 'package:collection_widgets/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:flutter/material.dart';






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
  shape: SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
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
  shape: SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);

