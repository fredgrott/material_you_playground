// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_squircle.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_theme_colors.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_theme_data_defaults.dart';

// Gist: temp fix until it's migrated to MD3 is to set icon and text
//        colors to inverseSurface

ListTileThemeData appMaterialLightListTileThemeData = ListTileThemeData(
  dense: false,
  style: ListTileStyle.list,
  selectedColor: appMaterialLightColorScheme.secondary,
  iconColor: appMaterialLightColorScheme.inverseSurface,
  textColor: appMaterialLightColorScheme.inverseSurface,
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: appMaterialLightColorScheme.surfaceVariant,
  selectedTileColor: appMaterialLightColorScheme.primary,
  minLeadingWidth: 4,
  enableFeedback: true,
  shape: SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);

ListTileThemeData appMaterialDarkListTileThemeData = ListTileThemeData(
  dense: false,
  style: ListTileStyle.list,
  selectedColor: appMaterialDarkColorScheme.secondary,
  iconColor: appMaterialDarkColorScheme.inverseSurface,
  textColor: appMaterialDarkColorScheme.inverseSurface,
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: appMaterialDarkColorScheme.surfaceVariant,
  selectedTileColor: appMaterialDarkColorScheme.primary,
  minLeadingWidth: 4,
  enableFeedback: true,
  shape: SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);
