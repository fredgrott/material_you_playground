// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:bottomsheet_demo/src/presentation/themes/app_theme_colors.dart';
import 'package:flutter/material.dart';


ChipThemeData appMaterialLightChipThemeData = ChipThemeData(
  backgroundColor: appMaterialLightColorScheme.surface,
  deleteIconColor: appMaterialLightColorScheme.inversePrimary,
  disabledColor: appMaterialLightColorScheme.onSurface,
  selectedColor: appMaterialLightColorScheme.secondary,
  secondarySelectedColor: appMaterialLightColorScheme.surfaceVariant,
  shadowColor: appMaterialLightColorScheme.shadow,
  selectedShadowColor: appMaterialLightColorScheme.shadow.withOpacity(0.5),
  showCheckmark: true,
  checkmarkColor: appMaterialLightColorScheme.secondaryContainer,
  labelPadding: const EdgeInsets.all(16),
  padding: const EdgeInsets.all(16),
  side: appMaterialLightBorderSide,
  //shape: ,
  labelStyle: appMaterialLightChipLabelStyle,
  secondaryLabelStyle: appMaterialLightChipSecondaryLabelStyle,
  brightness: Brightness.light,
  elevation: 1,
  pressElevation: 2,
);

BorderSide appMaterialLightBorderSide = BorderSide(
  color: appMaterialLightColorScheme.outline,
  // ignore: avoid_redundant_argument_values
  width: 1,
  // ignore: avoid_redundant_argument_values
  style: BorderStyle.solid,

);

// LabelLarge
TextStyle appMaterialLightChipLabelStyle = TextStyle(
  color: appMaterialLightColorScheme.onSurface,
);

TextStyle appMaterialLightChipSecondaryLabelStyle = TextStyle(
  color: appMaterialDarkColorScheme.onSurface,
);