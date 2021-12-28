// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:materialyou_dynamiccolor/src/presentation/themes/app_theme_colors.dart';



// Gist: on Light theme we need tertiary color and dark white color aan
//       font family and style and weight deviaitons go here.

TextTheme appMateriaLightTextTheme = const TextTheme(
  displayLarge: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.w900,),
  displayMedium: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800,),
  displaySmall: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,),
  headlineLarge: TextStyle(
    fontStyle: FontStyle.normal, fontWeight: FontWeight.w900,
  ),
  headlineMedium: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800),
  headlineSmall: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600),
  bodyLarge: TextStyle(fontStyle: FontStyle.normal),
  bodyMedium: TextStyle(fontStyle: FontStyle.normal),
  bodySmall: TextStyle(fontStyle: FontStyle.normal),
  labelLarge: TextStyle(fontStyle: FontStyle.normal),
  labelMedium: TextStyle(fontStyle: FontStyle.normal),
  labelSmall: TextStyle(fontStyle: FontStyle.normal),
);

TextTheme appMaterialLightPrimaryTextTheme = TextTheme(
  displayLarge: TextStyle(color: appMaterialLightColorScheme.tertiary),
  displayMedium: TextStyle(color: appMaterialLightColorScheme.tertiary),
  displaySmall: TextStyle(color: appMaterialLightColorScheme.tertiary),
  headlineLarge: TextStyle(
    color: appMaterialLightColorScheme.tertiary,
  ),
  headlineMedium: TextStyle(color: appMaterialLightColorScheme.tertiary),
  headlineSmall: TextStyle(color: appMaterialLightColorScheme.tertiary),
  bodyLarge: TextStyle(color: appMaterialLightColorScheme.tertiary),
  bodyMedium: TextStyle(color: appMaterialLightColorScheme.tertiary),
  bodySmall: TextStyle(color: appMaterialLightColorScheme.tertiary),
  labelLarge: TextStyle(color: appMaterialLightColorScheme.tertiary),
  labelMedium: TextStyle(color: appMaterialLightColorScheme.tertiary),
  labelSmall: TextStyle(color: appMaterialLightColorScheme.tertiary),
);

TextTheme appMateriaDarkTextTheme = const TextTheme(
  displayLarge: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900,),
  displayMedium: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800,),
  displaySmall: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,),
  headlineLarge: TextStyle(
    fontStyle: FontStyle.normal, fontWeight: FontWeight.w900,
  ),
  headlineMedium: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800,),
  headlineSmall: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,),
  bodyLarge: TextStyle(fontStyle: FontStyle.normal,),
  bodyMedium: TextStyle(fontStyle: FontStyle.normal),
  bodySmall: TextStyle(fontStyle: FontStyle.normal),
  labelLarge: TextStyle(fontStyle: FontStyle.normal),
  labelMedium: TextStyle(fontStyle: FontStyle.normal),
  labelSmall: TextStyle(fontStyle: FontStyle.normal),
);

TextTheme appMaterialDarkPrimaryTextTheme = TextTheme(
  displayLarge: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  displayMedium: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  displaySmall: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  headlineLarge: TextStyle(
    color: appMaterialDarkColorScheme.tertiary,
  ),
  headlineMedium: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  headlineSmall: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  bodyLarge: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  bodyMedium: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  bodySmall: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  labelLarge: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  labelMedium: TextStyle(color: appMaterialDarkColorScheme.tertiary),
  labelSmall: TextStyle(color: appMaterialDarkColorScheme.tertiary),
);

TextTheme appCupertinoTextTheme = const TextTheme(
  displayLarge: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w900,),
  displayMedium: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800,),
  displaySmall: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,),
  headlineLarge: TextStyle(
    fontStyle: FontStyle.normal, fontWeight: FontWeight.w900,
  ),
  headlineMedium: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w800,),
  headlineSmall: TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w600,),
  bodyLarge: TextStyle(fontStyle: FontStyle.normal),
  bodyMedium: TextStyle(fontStyle: FontStyle.normal),
  bodySmall: TextStyle(fontStyle: FontStyle.normal),
  labelLarge: TextStyle(fontStyle: FontStyle.normal),
  labelMedium: TextStyle(fontStyle: FontStyle.normal),
  labelSmall: TextStyle(fontStyle: FontStyle.normal),
);

TextTheme appCupertinoPrimaryTextTheme = TextTheme(
  displayLarge: TextStyle(color: appCupertinoColorScheme.tertiary),
  displayMedium: TextStyle(color: appCupertinoColorScheme.tertiary),
  displaySmall: TextStyle(color: appCupertinoColorScheme.tertiary),
  headlineLarge: TextStyle(
    color: appCupertinoColorScheme.tertiary,
  ),
  headlineMedium: TextStyle(color: appCupertinoColorScheme.tertiary),
  headlineSmall: TextStyle(color: appCupertinoColorScheme.tertiary),
  bodyLarge: TextStyle(color: appCupertinoColorScheme.tertiary),
  bodyMedium: TextStyle(color: appCupertinoColorScheme.tertiary),
  bodySmall: TextStyle(color: appCupertinoColorScheme.tertiary),
  labelLarge: TextStyle(color: appCupertinoColorScheme.tertiary),
  labelMedium: TextStyle(color: appCupertinoColorScheme.tertiary),
  labelSmall: TextStyle(color: appCupertinoColorScheme.tertiary),
);
