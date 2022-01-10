// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:standardsidesheet_demo/src/presentation/themes/app_theme_colors.dart';
import 'package:standardsidesheet_demo/src/presentation/themes/app_theme_data_defaults.dart';




// Gist: MD3 spec at https://m3.material.io/components/floating-action-button/specs

// MD3 default elevation settings as opposed to the lowest settings
FloatingActionButtonThemeData appMaterialLightFloatingActionButtonThemeData =
    FloatingActionButtonThemeData(
      foregroundColor: appMaterialLightColorScheme.onPrimaryContainer,
      backgroundColor: appMaterialLightColorScheme.primaryContainer,
      focusColor: appMaterialLightFocusColor,
      hoverColor: appMaterialLightHoverColor,
      splashColor: appMaterialLightSplashColor,
      elevation: 3,
      focusElevation: 3,
      hoverElevation: 4,
      disabledElevation: 0,
      highlightElevation: 6,
      enableFeedback: true,
      extendedPadding: const EdgeInsets.all(16),
      
    );

FloatingActionButtonThemeData appMaterialDarkFloatingActionButtonThemeData =
    FloatingActionButtonThemeData(
  foregroundColor: appMaterialDarkColorScheme.onPrimaryContainer,
  backgroundColor: appMaterialDarkColorScheme.primaryContainer,
  focusColor: appMaterialDarkFocusColor,
  hoverColor: appMaterialDarkHoverColor,
  splashColor: appMaterialDarkSplashColor,
  elevation: 3,
  focusElevation: 3,
  hoverElevation: 4,
  disabledElevation: 0,
  highlightElevation: 6,
  enableFeedback: true,
  extendedPadding: const EdgeInsets.all(16),
);

