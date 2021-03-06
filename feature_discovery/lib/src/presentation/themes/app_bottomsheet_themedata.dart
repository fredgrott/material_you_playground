// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:feature_discovery/src/presentation/themes/app_squircle.dart';
import 'package:feature_discovery/src/presentation/themes/app_theme_colors.dart';
import 'package:feature_discovery/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:flutter/material.dart';


BottomSheetThemeData appMaterialLightBottomSheetThemeData =
    BottomSheetThemeData(
      backgroundColor: appMaterialLightColorScheme.surfaceVariant,
      elevation: elevationTwo,
      modalBackgroundColor: appMaterialLightColorScheme.inverseSurface,
      modalElevation: elevationFour,
      clipBehavior: Clip.antiAlias,
      constraints: const BoxConstraints.expand(),
      shape: const SquircleBorder(
               radius: BorderRadius.all(
                         Radius.circular(8.0),
            ),),
    );

BottomSheetThemeData appMaterialDarkBottomSheetThemeData =
    BottomSheetThemeData(
  backgroundColor: appMaterialDarkColorScheme.surfaceVariant,
  elevation: elevationTwo,
  modalBackgroundColor: appMaterialDarkColorScheme.inverseSurface,
  modalElevation: elevationFour,
  clipBehavior: Clip.antiAlias,
  constraints: const BoxConstraints.expand(),
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(8.0),
    ),
  ),
);
