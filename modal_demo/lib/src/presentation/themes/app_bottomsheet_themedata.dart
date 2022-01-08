// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:modal_demo/src/presentation/themes/app_squircle.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_colors.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_data_defaults.dart';


BottomSheetThemeData appMaterialLightBottomSheetThemeData =
    BottomSheetThemeData(
      backgroundColor: appMaterialLightColorScheme.surfaceVariant,
      elevation: elevationTwo,
      modalBackgroundColor: appMaterialLightColorScheme.inverseSurface,
      modalElevation: elevationFour,
      clipBehavior: Clip.antiAlias,
      constraints: const BoxConstraints.expand(),
      shape: SquircleBorder(
               radius: BorderRadius.all(
                         Radius.circular(widgetRadius),
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
  shape: SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(widgetRadius),
    ),
  ),
);
