// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_theme_colors.dart';

ListTileThemeData appMaterialLightListTileThemeData = ListTileThemeData(
  dense: false,
  style: ListTileStyle.list,
  selectedColor: appMaterialLightColorScheme.secondary,
  iconColor: appMaterialLightColorScheme.secondaryContainer,
  textColor: appMaterialLightColorScheme.tertiaryContainer,
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: appMaterialLightColorScheme.surfaceVariant,
  selectedTileColor: appMaterialLightColorScheme.inversePrimary,
  minLeadingWidth: 4,
  enableFeedback: true,
);

ListTileThemeData appMaterialDarkListTileThemeData = ListTileThemeData(
  dense: false,
  style: ListTileStyle.list,
  selectedColor: appMaterialDarkColorScheme.secondary,
  iconColor: appMaterialDarkColorScheme.secondaryContainer,
  textColor: appMaterialDarkColorScheme.tertiaryContainer,
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: appMaterialDarkColorScheme.surfaceVariant,
  selectedTileColor: appMaterialDarkColorScheme.inversePrimary,
  minLeadingWidth: 4,
  enableFeedback: true,
);

ListTileThemeData appCupertinoListTileThemeData = ListTileThemeData(
  dense: false,
  style: ListTileStyle.list,
  selectedColor: appCupertinoColorScheme.secondary,
  iconColor: appCupertinoColorScheme.secondaryContainer,
  textColor: appCupertinoColorScheme.tertiaryContainer,
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: appCupertinoColorScheme.surfaceVariant,
  selectedTileColor: appCupertinoColorScheme.inversePrimary,
  minLeadingWidth: 4,
  enableFeedback: true,
);
