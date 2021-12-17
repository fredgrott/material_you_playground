// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:adaptive_nav_two/themes/app_colors.dart';
import 'package:adaptive_nav_two/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


DrawerThemeData appMaterialLightDrawerThemeData = DrawerThemeData(
  backgroundColor: Color(materialLightSystemScheme.surfaceVariant),
  scrimColor: Color(materialLightSystemScheme.surface),
  elevation: appElevation,
);

DrawerThemeData appMaterialHighContrastDrawerThemeData = DrawerThemeData(
  backgroundColor: Color(materialLightSystemScheme.surfaceVariant),
  scrimColor: Color(materialLightSystemScheme.surface),
  elevation: appElevation,
);

DrawerThemeData appMaterialDarkDrawerThemeData = DrawerThemeData(
  backgroundColor: Color(materialDarkSystemScheme.surfaceVariant),
  scrimColor: Color(materialDarkSystemScheme.surface),
  elevation: appElevation,
);

DrawerThemeData appMaterialDarkHighContrastDrawerThemeData = DrawerThemeData(
  backgroundColor: Color(materialDarkSystemScheme.surfaceVariant),
  scrimColor: Color(materialDarkSystemScheme.surface),
  elevation: appElevation,
);

DrawerThemeData appCupertinoDrawerThemeData = DrawerThemeData(
  backgroundColor: Color(cupertinoSystemScheme.surfaceVariant),
  scrimColor: Color(cupertinoSystemScheme.surface),
  elevation: appElevation,
);
