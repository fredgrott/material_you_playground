// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_colors.dart';


TooltipThemeData appMaterialLightToolTipThemeData = TooltipThemeData(
  height: 32,
  padding: const EdgeInsets.all(8),
  margin: const EdgeInsets.all(16),
  verticalOffset: 16,
  preferBelow: false,
  excludeFromSemantics: false,
  decoration: BoxDecoration(
    color: appMaterialLightColorScheme.primary.withOpacity(0.9),
    borderRadius: const BorderRadius.all(Radius.circular(4)),
  ),
  textStyle: appMaterialLightTooltipTextStyle,
  waitDuration: const Duration(milliseconds: 450),
  showDuration: const Duration(milliseconds: 500),
  triggerMode: TooltipTriggerMode.tap,
  enableFeedback: true,
);

// LabelMedium
TextStyle appMaterialLightTooltipTextStyle = TextStyle(
  fontSize: 11.0, 
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  color: appMaterialLightColorScheme.onPrimary,
);

TextStyle appMaterialDarkTooltipTextStyle = TextStyle(
  fontSize: 11.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  color: appMaterialLightColorScheme.onPrimary,
);

TooltipThemeData appMaterialDarkToolTipThemeData = TooltipThemeData(
  height: 32,
  padding: const EdgeInsets.all(8),
  margin: const EdgeInsets.all(16),
  verticalOffset: 16,
  preferBelow: false,
  excludeFromSemantics: false,
  decoration: BoxDecoration(
    color: appMaterialDarkColorScheme.primary.withOpacity(0.9),
    borderRadius: const BorderRadius.all(Radius.circular(4)),
  ),
  textStyle: appMaterialDarkTooltipTextStyle,
  waitDuration: const Duration(milliseconds: 450),
  showDuration: const Duration(milliseconds: 500),
  triggerMode: TooltipTriggerMode.tap,
  enableFeedback: true,
);
