// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:datatable_page/src/presentation/themes/app_theme_colors.dart';
import 'package:flutter/material.dart';








ScrollbarThemeData appMaterialLightScrollbarThemeData = ScrollbarThemeData(
  showTrackOnHover: true,
  isAlwaysShown: false,
  radius: const Radius.circular(8),
  interactive: true,
  minThumbLength: 8,
  mainAxisMargin: 8,
  crossAxisMargin: 8,
  thickness: MaterialStateProperty.all(8),
  trackVisibility: MaterialStateProperty.all(true),
  thumbColor: MaterialStateProperty.all(appMaterialLightColorScheme.secondary),
  
  trackColor: MaterialStateProperty.all(appMaterialLightColorScheme.secondaryContainer),
  trackBorderColor: MaterialStateProperty.all(appMaterialLightColorScheme.inversePrimary),
);

ScrollbarThemeData appMaterialDarkScrollbarThemeData = ScrollbarThemeData(
  showTrackOnHover: true,
  isAlwaysShown: false,
  radius: const Radius.circular(8),
  interactive: true,
  minThumbLength: 8,
  mainAxisMargin: 8,
  crossAxisMargin: 8,
  thickness: MaterialStateProperty.all(8),
  trackVisibility: MaterialStateProperty.all(true),
  thumbColor: MaterialStateProperty.all(appMaterialDarkColorScheme.secondary),
  trackColor:
      MaterialStateProperty.all(appMaterialDarkColorScheme.secondaryContainer),
  trackBorderColor:
      MaterialStateProperty.all(appMaterialDarkColorScheme.inversePrimary),
);

