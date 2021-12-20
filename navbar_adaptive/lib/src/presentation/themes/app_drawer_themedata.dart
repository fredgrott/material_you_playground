// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_theme_colors.dart';

DrawerThemeData appMaterialLightDrawerThemeData = DrawerThemeData(
  backgroundColor: appMaterialLightColorScheme.surfaceVariant,
  scrimColor: appMaterialLightColorScheme.secondaryContainer,
  elevation: 4,
);

DrawerThemeData appMaterialDarkDrawerThemeData = DrawerThemeData(
  backgroundColor: appMaterialDarkColorScheme.surfaceVariant,
  scrimColor: appMaterialDarkColorScheme.secondaryContainer,
  elevation: 4,
);

DrawerThemeData appCupertinoDrawerThemeData = DrawerThemeData(
  backgroundColor: appCupertinoColorScheme.surfaceVariant,
  scrimColor: appCupertinoColorScheme.secondaryContainer,
  elevation: 4,
);
