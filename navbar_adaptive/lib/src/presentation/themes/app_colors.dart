// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:navbar_adaptive/src/infrastrucutre/app_vars.dart';

// Gist: The Material Io team at this time android dynamic color
//       plugin by default uses corePalette vars so the flow is
//       form a virtual MD3 color Scheme class to ColorScheme
//       and up to the individual settings on UI themes and
//       UI components that do not have themes and themedata
//       constructs so that dynamic color on android and
//       other devices flows through correctly.

// I use the Google Light blue 500 to compute the
// system baseline of colors under MD3.
CorePalette? corePalette = CorePalette.of(0xff03A9F4);

// Note: Using crossplatform Flutter Platform Widgets(FPW)
//       means we do not use highContrast and darkHighContrast
//       themes as they are a repeat of light and dark themes
//       so only need the light and dark system baseline colors
//       in the MD3 scheme constructs.

Scheme materialLightSystemScheme = Scheme(
  primary: corePalette?.primary.get(40) as int,
  onPrimary: corePalette?.primary.get(100) as int,
  primaryContainer: corePalette?.primary.get(90) as int,
  onPrimaryContainer: corePalette?.primary.get(10) as int,
  secondary: corePalette?.secondary.get(40) as int,
  onSecondary: corePalette?.secondary.get(100) as int,
  secondaryContainer: corePalette?.secondary.get(90) as int,
  onSecondaryContainer: corePalette?.secondary.get(10) as int,
  tertiary: corePalette?.tertiary.get(40) as int,
  onTertiary: corePalette?.tertiary.get(100) as int,
  tertiaryContainer: corePalette?.tertiary.get(90) as int,
  onTertiaryContainer: corePalette?.tertiary.get(10) as int,
  error: corePalette?.error.get(40) as int,
  onError: corePalette?.error.get(100) as int,
  errorContainer: corePalette?.error.get(90) as int,
  onErrorContainer: corePalette?.error.get(10) as int,
  background: corePalette?.neutral.get(99) as int,
  onBackground: corePalette?.neutral.get(10) as int,
  surface: corePalette?.neutral.get(99) as int,
  onSurface: corePalette?.neutral.get(10) as int,
  surfaceVariant: corePalette?.neutralVariant.get(90) as int,
  onSurfaceVariant: corePalette?.neutralVariant.get(30) as int,
  outline: corePalette?.neutralVariant.get(50) as int,
  shadow: corePalette?.neutral.get(0) as int,
  inverseSurface: corePalette?.neutral.get(20) as int,
  inverseOnSurface: corePalette?.neutral.get(95) as int,
  inversePrimary: corePalette?.primary.get(80) as int,
);

Scheme materialDarkSystemScheme = Scheme(
  primary: corePalette?.primary.get(80) as int,
  onPrimary: corePalette?.primary.get(20) as int,
  primaryContainer: corePalette?.primary.get(30) as int,
  onPrimaryContainer: corePalette?.primary.get(90) as int,
  secondary: corePalette?.secondary.get(80) as int,
  onSecondary: corePalette?.secondary.get(20) as int,
  secondaryContainer: corePalette?.secondary.get(30) as int,
  onSecondaryContainer: corePalette?.secondary.get(90) as int,
  tertiary: corePalette?.tertiary.get(80) as int,
  onTertiary: corePalette?.tertiary.get(20) as int,
  tertiaryContainer: corePalette?.tertiary.get(30) as int,
  onTertiaryContainer: corePalette?.tertiary.get(90) as int,
  error: corePalette?.error.get(80) as int,
  onError: corePalette?.error.get(20) as int,
  errorContainer: corePalette?.error.get(30) as int,
  onErrorContainer: corePalette?.error.get(90) as int,
  background: corePalette?.neutral.get(10) as int,
  onBackground: corePalette?.neutral.get(90) as int,
  surface: corePalette?.neutral.get(10) as int,
  onSurface: corePalette?.neutral.get(90) as int,
  surfaceVariant: corePalette?.neutralVariant.get(30) as int,
  onSurfaceVariant: corePalette?.neutralVariant.get(80) as int,
  outline: corePalette?.neutral.get(60) as int,
  shadow: corePalette?.neutral.get(0) as int,
  inverseSurface: corePalette?.neutral.get(92) as int,
  inverseOnSurface: corePalette?.neutral.get(20) as int,
  inversePrimary: corePalette?.primary.get(40) as int,
);

Scheme cupertinoSystemScheme = Scheme(
  primary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.primary),
    darkColor: Color(materialDarkSystemScheme.primary),
    highContrastColor: Color(materialLightSystemScheme.primary),
    darkHighContrastColor: Color(materialDarkSystemScheme.primary),
  ).value,
  onPrimary: CupertinoDynamicColor.withBrightnessAndContrast(
          color: Color(materialLightSystemScheme.onPrimary),
          darkColor: Color(materialDarkSystemScheme.onPrimary),
          highContrastColor: Color(materialLightSystemScheme.onPrimary),
          darkHighContrastColor: Color(materialDarkSystemScheme.onPrimary))
      .value,
  primaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
          color: Color(materialLightSystemScheme.primaryContainer),
          darkColor: Color(materialDarkSystemScheme.onPrimaryContainer),
          highContrastColor: Color(materialLightSystemScheme.primaryContainer),
          darkHighContrastColor:
              Color(materialDarkSystemScheme.onPrimaryContainer))
      .value,
  onPrimaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
          color: Color(materialLightSystemScheme.onPrimaryContainer),
          darkColor: Color(materialDarkSystemScheme.onPrimaryContainer),
          highContrastColor:
              Color(materialLightSystemScheme.onPrimaryContainer),
          darkHighContrastColor:
              Color(materialDarkSystemScheme.onPrimaryContainer))
      .value,
  secondary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.secondary),
    darkColor: Color(materialDarkSystemScheme.secondary),
    highContrastColor: Color(materialLightSystemScheme.secondary),
    darkHighContrastColor: Color(materialDarkSystemScheme.secondary),
  ).value,
  onSecondary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onSecondary),
    darkColor: Color(materialDarkSystemScheme.onSecondary),
    highContrastColor: Color(materialLightSystemScheme.onSecondary),
    darkHighContrastColor: Color(materialDarkSystemScheme.onSecondary),
  ).value,
  secondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.secondaryContainer),
    darkColor: Color(materialDarkSystemScheme.secondaryContainer),
    highContrastColor: Color(materialLightSystemScheme.secondaryContainer),
    darkHighContrastColor: Color(materialDarkSystemScheme.secondaryContainer),
  ).value,
  onSecondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onSecondaryContainer),
    darkColor: Color(materialDarkSystemScheme.onSecondaryContainer),
    highContrastColor: Color(materialLightSystemScheme.onSecondaryContainer),
    darkHighContrastColor: Color(materialDarkSystemScheme.onSecondaryContainer),
  ).value,
  tertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.tertiary),
    darkColor: Color(materialDarkSystemScheme.tertiary),
    highContrastColor: Color(materialLightSystemScheme.tertiary),
    darkHighContrastColor: Color(materialDarkSystemScheme.tertiary),
  ).value,
  onTertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onTertiary),
    darkColor: Color(materialDarkSystemScheme.onTertiary),
    highContrastColor: Color(materialLightSystemScheme.onTertiary),
    darkHighContrastColor: Color(materialDarkSystemScheme.onTertiary),
  ).value,
  tertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.tertiaryContainer),
    darkColor: Color(materialDarkSystemScheme.tertiaryContainer),
    highContrastColor: Color(materialLightSystemScheme.tertiaryContainer),
    darkHighContrastColor: Color(materialDarkSystemScheme.tertiaryContainer),
  ).value,
  onTertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onTertiaryContainer),
    darkColor: Color(materialDarkSystemScheme.onTertiaryContainer),
    highContrastColor: Color(materialLightSystemScheme.onTertiaryContainer),
    darkHighContrastColor: Color(materialDarkSystemScheme.onTertiaryContainer),
  ).value,
  error: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.error),
    darkColor: Color(materialDarkSystemScheme.error),
    highContrastColor: Color(materialLightSystemScheme.error),
    darkHighContrastColor: Color(materialDarkSystemScheme.error),
  ).value,
  onError: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onError),
    darkColor: Color(materialDarkSystemScheme.onError),
    highContrastColor: Color(materialLightSystemScheme.onError),
    darkHighContrastColor: Color(materialDarkSystemScheme.onError),
  ).value,
  errorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.errorContainer),
    darkColor: Color(materialDarkSystemScheme.errorContainer),
    highContrastColor: Color(materialLightSystemScheme.errorContainer),
    darkHighContrastColor: Color(materialDarkSystemScheme.errorContainer),
  ).value,
  onErrorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onErrorContainer),
    darkColor: Color(materialDarkSystemScheme.onErrorContainer),
    highContrastColor: Color(materialLightSystemScheme.onErrorContainer),
    darkHighContrastColor: Color(materialDarkSystemScheme.onErrorContainer),
  ).value,
  background: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.background),
    darkColor: Color(materialDarkSystemScheme.background),
    highContrastColor: Color(materialLightSystemScheme.background),
    darkHighContrastColor: Color(materialDarkSystemScheme.background),
  ).value,
  onBackground: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onBackground),
    darkColor: Color(materialDarkSystemScheme.onBackground),
    highContrastColor: Color(materialLightSystemScheme.onBackground),
    darkHighContrastColor: Color(materialDarkSystemScheme.onBackground),
  ).value,
  surface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.surface),
    darkColor: Color(materialDarkSystemScheme.surface),
    highContrastColor: Color(materialLightSystemScheme.surface),
    darkHighContrastColor: Color(materialDarkSystemScheme.surface),
  ).value,
  onSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onSurface),
    darkColor: Color(materialDarkSystemScheme.onSurface),
    highContrastColor: Color(materialLightSystemScheme.onSurface),
    darkHighContrastColor: Color(materialDarkSystemScheme.onSurface),
  ).value,
  surfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.surfaceVariant),
    darkColor: Color(materialDarkSystemScheme.surfaceVariant),
    highContrastColor: Color(materialLightSystemScheme.surfaceVariant),
    darkHighContrastColor: Color(materialDarkSystemScheme.surfaceVariant),
  ).value,
  onSurfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.onSurfaceVariant),
    darkColor: Color(materialDarkSystemScheme.onSurfaceVariant),
    highContrastColor: Color(materialLightSystemScheme.onSurfaceVariant),
    darkHighContrastColor: Color(materialDarkSystemScheme.onSurfaceVariant),
  ).value,
  outline: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.outline),
    darkColor: Color(materialDarkSystemScheme.outline),
    highContrastColor: Color(materialLightSystemScheme.outline),
    darkHighContrastColor: Color(materialDarkSystemScheme.outline),
  ).value,
  shadow: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.shadow),
    darkColor: Color(materialDarkSystemScheme.shadow),
    highContrastColor: Color(materialLightSystemScheme.shadow),
    darkHighContrastColor: Color(materialDarkSystemScheme.shadow),
  ).value,
  inverseSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.inverseSurface),
    darkColor: Color(materialDarkSystemScheme.inverseSurface),
    highContrastColor: Color(materialLightSystemScheme.inverseSurface),
    darkHighContrastColor: Color(materialDarkSystemScheme.inverseSurface),
  ).value,
  inverseOnSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.inverseOnSurface),
    darkColor: Color(materialDarkSystemScheme.inverseOnSurface),
    highContrastColor: Color(materialLightSystemScheme.inverseOnSurface),
    darkHighContrastColor: Color(materialDarkSystemScheme.inverseOnSurface),
  ).value,
  inversePrimary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(materialLightSystemScheme.inversePrimary),
    darkColor: Color(materialDarkSystemScheme.inversePrimary),
    highContrastColor: Color(materialLightSystemScheme.inversePrimary),
    darkHighContrastColor: Color(materialDarkSystemScheme.inversePrimary),
  ).value,
);

// This is the computation of brand colors that get harmonize with
// primary.

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

ColorScheme materialLightColorScheme = ColorScheme(
  primary: Color(materialLightSystemScheme.primary),
  primaryContainer: Color(materialLightSystemScheme.primaryContainer),
  onPrimaryContainer: Color(materialLightSystemScheme.onPrimaryContainer),
  secondary: Color(materialLightSystemScheme.secondary),
  secondaryContainer: Color(materialLightSystemScheme.secondaryContainer),
  onSecondaryContainer: Color(materialLightSystemScheme.onSecondaryContainer),
  tertiary: Color(materialLightSystemScheme.tertiary),
  tertiaryContainer: Color(materialLightSystemScheme.tertiaryContainer),
  onTertiary: Color(materialLightSystemScheme.onTertiary),
  onTertiaryContainer: Color(materialLightSystemScheme.onTertiaryContainer),
  errorContainer: Color(materialLightSystemScheme.errorContainer),
  onErrorContainer: Color(materialLightSystemScheme.onErrorContainer),
  surfaceVariant: Color(materialLightSystemScheme.surfaceVariant),
  onSurfaceVariant: Color(materialLightSystemScheme.onSurfaceVariant),
  outline: Color(materialLightSystemScheme.outline),
  shadow: Color(materialLightSystemScheme.shadow),
  inversePrimary: Color(materialLightSystemScheme.inversePrimary),
  onInverseSurface: Color(materialLightSystemScheme.inverseOnSurface),
  inverseSurface: Color(materialLightSystemScheme.inverseSurface),
  surface: Color(materialLightSystemScheme.surface),
  background: Color(materialLightSystemScheme.background),
  error: Color(materialLightSystemScheme.error),
  onPrimary: Color(materialLightSystemScheme.onPrimary),
  onSecondary: Color(materialLightSystemScheme.onSecondary),
  onSurface: Color(materialLightSystemScheme.onSurface),
  onBackground: Color(materialLightSystemScheme.onBackground),
  onError: Color(materialLightSystemScheme.onError),
  brightness: Brightness.light,
);

ColorScheme materialDarkColorScheme = ColorScheme(
  primary: Color(materialDarkSystemScheme.primary),
  primaryContainer: Color(materialDarkSystemScheme.primaryContainer),
  onPrimaryContainer: Color(materialDarkSystemScheme.onPrimaryContainer),
  secondary: Color(materialDarkSystemScheme.secondary),
  secondaryContainer: Color(materialDarkSystemScheme.secondaryContainer),
  onSecondaryContainer: Color(materialDarkSystemScheme.onSecondaryContainer),
  tertiary: Color(materialDarkSystemScheme.tertiary),
  tertiaryContainer: Color(materialDarkSystemScheme.tertiaryContainer),
  onTertiary: Color(materialDarkSystemScheme.onTertiary),
  onTertiaryContainer: Color(materialDarkSystemScheme.onTertiaryContainer),
  errorContainer: Color(materialDarkSystemScheme.errorContainer),
  onErrorContainer: Color(materialDarkSystemScheme.onErrorContainer),
  surfaceVariant: Color(materialDarkSystemScheme.surfaceVariant),
  onSurfaceVariant: Color(materialDarkSystemScheme.onSurfaceVariant),
  outline: Color(materialDarkSystemScheme.outline),
  shadow: Color(materialDarkSystemScheme.shadow),
  inversePrimary: Color(materialDarkSystemScheme.inversePrimary),
  onInverseSurface: Color(materialDarkSystemScheme.inverseOnSurface),
  inverseSurface: Color(materialDarkSystemScheme.inverseSurface),
  surface: Color(materialDarkSystemScheme.surface),
  background: Color(materialDarkSystemScheme.background),
  error: Color(materialDarkSystemScheme.error),
  onPrimary: Color(materialDarkSystemScheme.onPrimary),
  onSecondary: Color(materialDarkSystemScheme.onSecondary),
  onSurface: Color(materialDarkSystemScheme.onSurface),
  onBackground: Color(materialDarkSystemScheme.onBackground),
  onError: Color(materialDarkSystemScheme.onError),
  brightness: Brightness.dark,
);

ColorScheme cupertinoColorScheme = ColorScheme(
  primary: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.primary,
      darkColor: materialDarkColorScheme.primary,
      highContrastColor: materialLightColorScheme.primary,
      darkHighContrastColor: materialDarkColorScheme.primary),
  primaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.primaryContainer, 
    darkColor: materialDarkColorScheme.primaryContainer,
    highContrastColor: materialLightColorScheme.primaryContainer, 
    darkHighContrastColor: materialLightColorScheme.primaryContainer),
  onPrimaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onPrimaryContainer, 
    darkColor: materialDarkColorScheme.onPrimaryContainer, 
    highContrastColor: materialLightColorScheme.onPrimaryContainer, 
    darkHighContrastColor: materialDarkColorScheme.onPrimaryContainer),
  

  secondary: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.secondary,
      darkColor: materialDarkColorScheme.secondary,
      highContrastColor: materialLightColorScheme.secondary,
      darkHighContrastColor: materialDarkColorScheme.secondary),
  secondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.secondaryContainer, 
    darkColor: materialDarkColorScheme.secondaryContainer,
    highContrastColor: materialLightColorScheme.secondaryContainer, 
    darkHighContrastColor: materialDarkColorScheme.secondaryContainer),
  onSecondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onSecondaryContainer, 
    darkColor: materialDarkColorScheme.onSecondaryContainer, 
    highContrastColor: materialLightColorScheme.onSecondaryContainer, 
    darkHighContrastColor: materialDarkColorScheme.onSecondaryContainer),
  tertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.tertiary, 
    darkColor: materialDarkColorScheme.tertiary, 
    highContrastColor: materialLightColorScheme.tertiary, 
    darkHighContrastColor: materialDarkColorScheme.tertiary),
  onTertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onTertiary, 
    darkColor: materialDarkColorScheme.onTertiary, 
    highContrastColor: materialLightColorScheme.onTertiary, 
    darkHighContrastColor: materialDarkColorScheme.onTertiary),
  tertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.tertiaryContainer,
    darkColor: materialDarkColorScheme.tertiaryContainer, 
    highContrastColor: materialLightColorScheme.tertiaryContainer, 
    darkHighContrastColor: materialDarkColorScheme.tertiaryContainer),

  onTertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onTertiaryContainer, 
    darkColor: materialDarkColorScheme.onTertiaryContainer, 
    highContrastColor: materialLightColorScheme.onTertiaryContainer, 
    darkHighContrastColor: materialDarkColorScheme.onTertiaryContainer),

  errorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.errorContainer, 
    darkColor: materialDarkColorScheme.errorContainer, 
    highContrastColor: materialLightColorScheme.errorContainer, 
    darkHighContrastColor: materialDarkColorScheme.errorContainer),

  onErrorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onErrorContainer, 
    darkColor: materialDarkColorScheme.onErrorContainer, 
    highContrastColor: materialLightColorScheme.onErrorContainer, 
    darkHighContrastColor: materialDarkColorScheme.onErrorContainer),

  surfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.surfaceVariant, 
    darkColor: materialDarkColorScheme.surfaceVariant, 
    highContrastColor: materialLightColorScheme.surfaceVariant, 
    darkHighContrastColor: materialDarkColorScheme.surfaceVariant),

  onSurfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onSurfaceVariant, 
    darkColor: materialDarkColorScheme.onSurfaceVariant, 
    highContrastColor: materialLightColorScheme.onSurfaceVariant, 
    darkHighContrastColor: materialDarkColorScheme.onSurfaceVariant),

  outline: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.outline, 
    darkColor: materialDarkColorScheme.outline, 
    highContrastColor: materialLightColorScheme.outline, 
    darkHighContrastColor: materialDarkColorScheme.outline,),

  shadow: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.shadow, 
    darkColor: materialDarkColorScheme.shadow, 
    highContrastColor: materialLightColorScheme.shadow, 
    darkHighContrastColor: materialDarkColorScheme.shadow,),

  inversePrimary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.inversePrimary, 
    darkColor: materialDarkColorScheme.inversePrimary, 
    highContrastColor: materialLightColorScheme.inversePrimary, 
    darkHighContrastColor: materialDarkColorScheme.inversePrimary),

  inverseSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.inverseSurface, 
    darkColor: materialDarkColorScheme.inverseSurface,
    highContrastColor: materialLightColorScheme.inverseSurface, 
    darkHighContrastColor: materialDarkColorScheme.inverseSurface),

  onInverseSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: materialLightColorScheme.onInverseSurface, 
    darkColor: materialDarkColorScheme.onInverseSurface,
    highContrastColor: materialLightColorScheme.onInverseSurface,
    darkHighContrastColor: materialDarkColorScheme.onInverseSurface,),

  surface: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.surface,
      darkColor: materialDarkColorScheme.surface,
      highContrastColor: materialLightColorScheme.surface,
      darkHighContrastColor: materialDarkColorScheme.surface),
  background: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.background,
      darkColor: materialDarkColorScheme.background,
      highContrastColor: materialLightColorScheme.background,
      darkHighContrastColor: materialDarkColorScheme.background),
  error: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.error,
      darkColor: materialDarkColorScheme.error,
      highContrastColor: materialLightColorScheme.error,
      darkHighContrastColor: materialDarkColorScheme.error),
  onPrimary: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.onPrimary,
      darkColor: materialDarkColorScheme.onPrimary,
      highContrastColor: materialLightColorScheme.onPrimary,
      darkHighContrastColor: materialDarkColorScheme.onPrimary),
  onSecondary: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.onSecondary,
      darkColor: materialDarkColorScheme.onSecondary,
      highContrastColor: materialLightColorScheme.onSecondary,
      darkHighContrastColor: materialDarkColorScheme.onSecondary),
  onSurface: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.onSurface,
      darkColor: materialDarkColorScheme.onSurface,
      highContrastColor: materialLightColorScheme.onSurface,
      darkHighContrastColor: materialDarkColorScheme.onSurface),
  onBackground: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.onBackground,
      darkColor: materialDarkColorScheme.onBackground,
      highContrastColor: materialLightColorScheme.onBackground,
      darkHighContrastColor: materialDarkColorScheme.onBackground),
  onError: CupertinoDynamicColor.withBrightnessAndContrast(
      color: materialLightColorScheme.onError,
      darkColor: materialDarkColorScheme.onError,
      highContrastColor: materialLightColorScheme.onError,
      darkHighContrastColor: materialDarkColorScheme.onError),
  
  brightness: appBrightness as Brightness,
);
