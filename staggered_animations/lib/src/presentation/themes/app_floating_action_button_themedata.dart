// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:staggered_animations/src/presentation/themes/app_theme_colors.dart';
import 'package:staggered_animations/src/presentation/themes/app_theme_data_defaults.dart';


FloatingActionButtonThemeData appMaterialLightFloatingActionButtonThemeData =
    FloatingActionButtonThemeData(
      foregroundColor: appMaterialLightColorScheme.primaryContainer,
      backgroundColor: appMaterialLightColorScheme.primary,
      focusColor: appMaterialLightFocusColor,
      hoverColor: appMaterialLightHoverColor,
      splashColor: appMaterialLightSplashColor,
      elevation: 4,
      focusElevation: 10,
      hoverElevation: 6,
      disabledElevation: 0,
      highlightElevation: 14,
      enableFeedback: true,
      
    );

FloatingActionButtonThemeData appMaterialDarkFloatingActionButtonThemeData =
    FloatingActionButtonThemeData(
  foregroundColor: appMaterialDarkColorScheme.primaryContainer,
  backgroundColor: appMaterialDarkColorScheme.primary,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  splashColor: appMaterialDarkSplashColor,
  elevation: 4,
  focusElevation: 10,
  hoverElevation: 6,
  disabledElevation: 0,
  highlightElevation: 14,
  enableFeedback: true,
);

