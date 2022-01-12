// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: cast_nullable_to_non_nullable


import 'package:custom_perm_drawer/src/infrastrucutre/app_vars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';





import 'package:material_color_utilities/material_color_utilities.dart';


// Gist: We have to prevent circular refs before ThemeData is fully iniitialized so
//       we created a default colorScheme instance via functions
//       And I still set ColorScheme in themedata

ColorScheme appMaterialLightColorScheme =
    ColorScheme.fromSeed(
      seedColor: const Color(0xff4c8bf5),
      // ignore: avoid_redundant_argument_values
      brightness: Brightness.light,);

ColorScheme appMaterialDarkColorScheme =
    ColorScheme.fromSeed(
      seedColor: const Color(0xff0f64f2),
      brightness: Brightness.dark,);

ColorScheme appCupertinoColorScheme =
    ColorScheme.fromSeed(
      seedColor: const Color(0xff4c8bf5),
      brightness: appBrightness as Brightness,);

int brandColorOne = 0xff009688;
int brandColorTwo = 0xff00bcd4;
int brandColorThree = 0xff4caf50;

CorePalette corePaletteOne = CorePalette.of(brandColorOne);
CorePalette corePaletteTwo = CorePalette.of(brandColorTwo);
CorePalette corePaletteThree = CorePalette.of(brandColorThree);

// light
int primaryLightOne = corePaletteOne.primary.get(40);
int onPrimaryLightOne = corePaletteOne.primary.get(100);
int primaryContainerLightOne = corePaletteOne.primary.get(90);
int onPrimaryContainerLightOne = corePaletteOne.primary.get(10);
int primaryLightTwo = corePaletteTwo.primary.get(40);
int onPrimaryLightTwo = corePaletteTwo.primary.get(100);
int primaryContainerLightTwo = corePaletteTwo.primary.get(90);
int onPrimaryContainerLightTwo = corePaletteTwo.primary.get(10);
int primaryLightThree = corePaletteThree.primary.get(40);
int onPrimaryLightThree = corePaletteThree.primary.get(100);
int primaryContainerLightThree = corePaletteThree.primary.get(90);
int onPrimaryContainerLightThree = corePaletteThree.primary.get(10);

// dark
int primaryDarkOne = corePaletteOne.primary.get(80);
int onPrimaryDarkOne = corePaletteOne.primary.get(20);
int primaryContainerDarkOne = corePaletteOne.primary.get(30);
int onPrimaryContainerDarkOne = corePaletteOne.primary.get(90);
int primaryDarkTwo = corePaletteTwo.primary.get(80);
int onPrimaryDarkTwo = corePaletteTwo.primary.get(20);
int primaryContainerDarkTwo = corePaletteTwo.primary.get(30);
int onPrimaryContainerDarkTwo = corePaletteTwo.primary.get(90);
int primaryDarkThree = corePaletteThree.primary.get(80);
int onPrimaryDarkThree = corePaletteThree.primary.get(20);
int primaryContainerDarkThree = corePaletteThree.primary.get(30);
int onPrimaryContainerDarkThree = corePaletteThree.primary.get(90);

// cupertino
CupertinoDynamicColor primaryCupertinoOne =
    CupertinoDynamicColor.withBrightnessAndContrast(
  color: Color(primaryLightOne),
  darkColor: Color(primaryDarkOne),
  highContrastColor: Color(primaryLightOne),
  darkHighContrastColor: Color(primaryDarkOne),
);

CupertinoDynamicColor onPrimaryCupertinoOne =
    CupertinoDynamicColor.withBrightnessAndContrast(
  color: Color(onPrimaryLightOne),
  darkColor: Color(onPrimaryDarkOne),
  highContrastColor: Color(onPrimaryLightOne),
  darkHighContrastColor: Color(onPrimaryDarkOne),
);

CupertinoDynamicColor primaryContainerCupertinoOne =
    CupertinoDynamicColor.withBrightnessAndContrast(
  color: Color(primaryContainerLightOne),
  darkColor: Color(primaryContainerDarkOne),
  highContrastColor: Color(primaryContainerLightOne),
  darkHighContrastColor: Color(primaryContainerDarkOne),
);

CupertinoDynamicColor onPrimaryContainerCupertinoOne =
    CupertinoDynamicColor.withBrightnessAndContrast(
  color: Color(onPrimaryContainerLightOne),
  darkColor: Color(onPrimaryContainerDarkOne),
  highContrastColor: Color(onPrimaryContainerLightOne),
  darkHighContrastColor: Color(onPrimaryContainerDarkOne),
);

CupertinoDynamicColor primaryCupertinoTwo =
    CupertinoDynamicColor.withBrightnessAndContrast(
  color: Color(primaryLightTwo),
  darkColor: Color(primaryDarkTwo),
  highContrastColor: Color(primaryLightTwo),
  darkHighContrastColor: Color(primaryDarkTwo),
);

CupertinoDynamicColor onPrimaryCupertinoTwo =
    CupertinoDynamicColor.withBrightnessAndContrast(
  color: Color(onPrimaryLightTwo),
  darkColor: Color(onPrimaryDarkTwo),
  highContrastColor: Color(onPrimaryLightTwo),
  darkHighContrastColor: Color(onPrimaryDarkTwo),
);

CupertinoDynamicColor primaryContainerCupertinoTwo =
    CupertinoDynamicColor.withBrightnessAndContrast(
        color: Color(primaryContainerLightTwo),
        darkColor: Color(primaryContainerDarkTwo),
        highContrastColor: Color(primaryContainerLightTwo),
        darkHighContrastColor: Color(primaryContainerDarkTwo));

CupertinoDynamicColor onPrimaryContainerCupertinoTwo =
    CupertinoDynamicColor.withBrightnessAndContrast(
        color: Color(onPrimaryContainerLightTwo),
        darkColor: Color(onPrimaryContainerDarkTwo),
        highContrastColor: Color(onPrimaryContainerLightTwo),
        darkHighContrastColor: Color(onPrimaryContainerDarkTwo));

CupertinoDynamicColor primaryCupertinoThree =
    CupertinoDynamicColor.withBrightnessAndContrast(
        color: Color(primaryLightThree),
        darkColor: Color(primaryDarkThree),
        highContrastColor: Color(primaryLightThree),
        darkHighContrastColor: Color(primaryDarkThree));

CupertinoDynamicColor onPrimaryCupertinoThree =
    CupertinoDynamicColor.withBrightnessAndContrast(
        color: Color(onPrimaryLightThree),
        darkColor: Color(onPrimaryDarkThree),
        highContrastColor: Color(onPrimaryLightThree),
        darkHighContrastColor: Color(onPrimaryDarkThree));

CupertinoDynamicColor primaryContainerCupertinoThree =
    CupertinoDynamicColor.withBrightnessAndContrast(
        color: Color(primaryContainerLightThree),
        darkColor: Color(primaryContainerDarkThree),
        highContrastColor: Color(primaryContainerLightThree),
        darkHighContrastColor: Color(primaryContainerDarkThree));

CupertinoDynamicColor onPrimaryContainerCupertinoThree =
    CupertinoDynamicColor.withBrightnessAndContrast(
        color: Color(onPrimaryContainerLightThree),
        darkColor: Color(onPrimaryContainerDarkThree),
        highContrastColor: Color(onPrimaryContainerLightThree),
        darkHighContrastColor: Color(onPrimaryContainerDarkThree));
