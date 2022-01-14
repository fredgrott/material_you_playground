// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:modal_demo/src/presentation/themes/app_squircle.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_colors.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_data_defaults.dart';




// Note: bottom rounder corners show not the top

DrawerThemeData appMaterialLightDrawerThemeData = DrawerThemeData(
  backgroundColor: appMaterialLightColorScheme.background,
  scrimColor: appMaterialLightColorScheme.secondaryContainer,
  elevation: 0,
  shape: const SquircleBorder(
    radius: BorderRadius.only(
      topLeft: Radius.zero,
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      bottomLeft: Radius.zero,

      ),
  ),
);

DrawerThemeData appMaterialDarkDrawerThemeData = DrawerThemeData(
  backgroundColor: appMaterialDarkColorScheme.background,
  scrimColor: appMaterialDarkColorScheme.secondaryContainer,
  elevation: 0,
  shape: const SquircleBorder(
    radius: BorderRadius.only(
      topLeft: Radius.zero,
      topRight: Radius.circular(16),
      bottomRight: Radius.circular(16),
      bottomLeft: Radius.zero,
    ),
  ),
);
