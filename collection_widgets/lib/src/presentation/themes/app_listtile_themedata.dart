// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:collection_widgets/src/presentation/themes/app_squircle.dart';
import 'package:collection_widgets/src/presentation/themes/app_theme_colors.dart';
import 'package:collection_widgets/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:flutter/material.dart';


// Gist: temp fix until it's migrated to MD3 is to set icon and text
//        colors to inverseSurface

ListTileThemeData appMaterialLightListTileThemeData = ListTileThemeData(
  dense: false,
  style: ListTileStyle.list,
  selectedColor: appMaterialLightColorScheme.secondary,
  iconColor: appMaterialLightColorScheme.inverseSurface,
  textColor: appMaterialLightColorScheme.inverseSurface,
  contentPadding: const EdgeInsets.all(8),
  tileColor: appMaterialLightColorScheme.surfaceVariant,
  selectedTileColor: appMaterialLightColorScheme.primary.withOpacity(0.28),
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
  contentPadding: const EdgeInsets.all(8),
  tileColor: appMaterialDarkColorScheme.surfaceVariant,
  selectedTileColor: appMaterialDarkColorScheme.primary.withOpacity(0.28),
  minLeadingWidth: 4,
  enableFeedback: true,
  shape: SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);
