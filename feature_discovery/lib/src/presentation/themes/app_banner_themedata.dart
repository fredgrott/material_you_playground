// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:feature_discovery/src/presentation/themes/app_theme_colors.dart';
import 'package:feature_discovery/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:flutter/material.dart';


MaterialBannerThemeData appMaterialLightBannerThemeData =
    MaterialBannerThemeData(
      backgroundColor: appMaterialLightColorScheme.primaryContainer,
      contentTextStyle: appMaterialLightContentBannerTextStyle,
      elevation: elevationOne,
      padding: const EdgeInsets.all(24),
      leadingPadding: const EdgeInsets.all(24),
    );

MaterialBannerThemeData appMaterialDarkBannerThemeData =
    MaterialBannerThemeData(
      backgroundColor: appMaterialDarkColorScheme.primaryContainer,
      contentTextStyle: appMaterialDarkContentBannerTextStyle,
      elevation: elevationOne,
      padding: const EdgeInsets.all(24),
      leadingPadding: const EdgeInsets.all(24),
);

// DisplayMedium
TextStyle appMaterialLightContentBannerTextStyle = TextStyle();

TextStyle appMaterialDarkContentBannerTextStyle = TextStyle();
