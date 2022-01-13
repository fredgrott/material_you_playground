// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:flutter/material.dart';
import 'package:layout_errors/src/presentation/themes/app_theme_colors.dart';



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
  shape: RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    side: appMaterialLightBorderSide,
  ),
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
  color: appMaterialLightColorScheme.onSurface,
);

BorderSide appMaterialDarkBorderSide = BorderSide(
  color: appMaterialDarkColorScheme.outline,
  // ignore: avoid_redundant_argument_values
  width: 1,
  // ignore: avoid_redundant_argument_values
  style: BorderStyle.solid,
);

// LabelLarge
TextStyle appMaterialDarkChipLabelStyle = TextStyle(
  color: appMaterialDarkColorScheme.onSurface,
);

TextStyle appMaterialDarkChipSecondaryLabelStyle = TextStyle(
  color: appMaterialDarkColorScheme.onSurface,
);

ChipThemeData appMaterialDarkChipThemeData = ChipThemeData(
  backgroundColor: appMaterialDarkColorScheme.surface,
  deleteIconColor: appMaterialDarkColorScheme.inversePrimary,
  disabledColor: appMaterialDarkColorScheme.onSurface,
  selectedColor: appMaterialDarkColorScheme.secondary,
  secondarySelectedColor: appMaterialDarkColorScheme.surfaceVariant,
  shadowColor: appMaterialDarkColorScheme.shadow,
  selectedShadowColor: appMaterialDarkColorScheme.shadow.withOpacity(0.5),
  showCheckmark: true,
  checkmarkColor: appMaterialDarkColorScheme.secondaryContainer,
  labelPadding: const EdgeInsets.all(16),
  padding: const EdgeInsets.all(16),
  side: appMaterialDarkBorderSide,
  //shape: ,
  labelStyle: appMaterialDarkChipLabelStyle,
  secondaryLabelStyle: appMaterialDarkChipSecondaryLabelStyle,
  brightness: Brightness.light,
  elevation: 1,
  pressElevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    side: appMaterialDarkBorderSide,
  ),
);
