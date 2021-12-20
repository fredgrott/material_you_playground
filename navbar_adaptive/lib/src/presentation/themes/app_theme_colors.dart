// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: cast_nullable_to_non_nullable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:navbar_adaptive/src/infrastrucutre/app_vars.dart';

// Gist: Eventully with the new Material Design 3 Colors one
//       will no longer have to redefine ColorScheme as this
//       seed will compute the new ColorScheme via the interaction
//       between MCU Scheme class and ColorScheme.
//
//       In non-dynamic-color devices, color scheme gets computed using
//       this seed and in dynamic color devices the Scheme and ColorScheme
//       are computed using the user chosen wallpaper dominant color as seed.

// I'm using
Color appColorSeed = const Color(0xff03A9F4);

CorePalette? corePalette = CorePalette.of(appColorSeed.value);

Scheme appMaterialLightScheme = Scheme(
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

Scheme appMaterialDarkScheme = Scheme(
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

Scheme appCupertinoScheme = Scheme(
  primary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.primary),
    darkColor: Color(appMaterialDarkScheme.primary),
    highContrastColor: Color(appMaterialLightScheme.primary),
    darkHighContrastColor: Color(appMaterialDarkScheme.primary),
  ).value,
  onPrimary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onPrimary),
    darkColor: Color(appMaterialDarkScheme.onPrimary),
    highContrastColor: Color(appMaterialLightScheme.onPrimary),
    darkHighContrastColor: Color(appMaterialDarkScheme.onPrimary),
  ).value,
  primaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.primaryContainer),
    darkColor: Color(appMaterialDarkScheme.onPrimaryContainer),
    highContrastColor: Color(appMaterialLightScheme.primaryContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.onPrimaryContainer),
  ).value,
  onPrimaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onPrimaryContainer),
    darkColor: Color(appMaterialDarkScheme.onPrimaryContainer),
    highContrastColor: Color(appMaterialLightScheme.onPrimaryContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.onPrimaryContainer),
  ).value,
  secondary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.secondary),
    darkColor: Color(appMaterialDarkScheme.secondary),
    highContrastColor: Color(appMaterialLightScheme.secondary),
    darkHighContrastColor: Color(appMaterialDarkScheme.secondary),
  ).value,
  onSecondary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onSecondary),
    darkColor: Color(appMaterialDarkScheme.onSecondary),
    highContrastColor: Color(appMaterialLightScheme.onSecondary),
    darkHighContrastColor: Color(appMaterialDarkScheme.onSecondary),
  ).value,
  secondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.secondaryContainer),
    darkColor: Color(appMaterialDarkScheme.secondaryContainer),
    highContrastColor: Color(appMaterialLightScheme.secondaryContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.secondaryContainer),
  ).value,
  onSecondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onSecondaryContainer),
    darkColor: Color(appMaterialDarkScheme.onSecondaryContainer),
    highContrastColor: Color(appMaterialLightScheme.onSecondaryContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.onSecondaryContainer),
  ).value,
  tertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.tertiary),
    darkColor: Color(appMaterialDarkScheme.tertiary),
    highContrastColor: Color(appMaterialLightScheme.tertiary),
    darkHighContrastColor: Color(appMaterialDarkScheme.tertiary),
  ).value,
  onTertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onTertiary),
    darkColor: Color(appMaterialDarkScheme.onTertiary),
    highContrastColor: Color(appMaterialLightScheme.onTertiary),
    darkHighContrastColor: Color(appMaterialDarkScheme.onTertiary),
  ).value,
  tertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.tertiaryContainer),
    darkColor: Color(appMaterialDarkScheme.tertiaryContainer),
    highContrastColor: Color(appMaterialLightScheme.tertiaryContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.tertiaryContainer),
  ).value,
  onTertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onTertiaryContainer),
    darkColor: Color(appMaterialDarkScheme.onTertiaryContainer),
    highContrastColor: Color(appMaterialLightScheme.onTertiaryContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.onTertiaryContainer),
  ).value,
  error: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.error),
    darkColor: Color(appMaterialDarkScheme.error),
    highContrastColor: Color(appMaterialLightScheme.error),
    darkHighContrastColor: Color(appMaterialDarkScheme.error),
  ).value,
  onError: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onError),
    darkColor: Color(appMaterialDarkScheme.onError),
    highContrastColor: Color(appMaterialLightScheme.onError),
    darkHighContrastColor: Color(appMaterialDarkScheme.onError),
  ).value,
  errorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.errorContainer),
    darkColor: Color(appMaterialDarkScheme.errorContainer),
    highContrastColor: Color(appMaterialLightScheme.errorContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.errorContainer),
  ).value,
  onErrorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onErrorContainer),
    darkColor: Color(appMaterialDarkScheme.onErrorContainer),
    highContrastColor: Color(appMaterialLightScheme.onErrorContainer),
    darkHighContrastColor: Color(appMaterialDarkScheme.onErrorContainer),
  ).value,
  background: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.background),
    darkColor: Color(appMaterialDarkScheme.background),
    highContrastColor: Color(appMaterialLightScheme.background),
    darkHighContrastColor: Color(appMaterialDarkScheme.background),
  ).value,
  onBackground: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onBackground),
    darkColor: Color(appMaterialDarkScheme.onBackground),
    highContrastColor: Color(appMaterialLightScheme.onBackground),
    darkHighContrastColor: Color(appMaterialDarkScheme.onBackground),
  ).value,
  surface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.surface),
    darkColor: Color(appMaterialDarkScheme.surface),
    highContrastColor: Color(appMaterialLightScheme.surface),
    darkHighContrastColor: Color(appMaterialDarkScheme.surface),
  ).value,
  onSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onSurface),
    darkColor: Color(appMaterialDarkScheme.onSurface),
    highContrastColor: Color(appMaterialLightScheme.onSurface),
    darkHighContrastColor: Color(appMaterialDarkScheme.onSurface),
  ).value,
  surfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.surfaceVariant),
    darkColor: Color(appMaterialDarkScheme.surfaceVariant),
    highContrastColor: Color(appMaterialLightScheme.surfaceVariant),
    darkHighContrastColor: Color(appMaterialDarkScheme.surfaceVariant),
  ).value,
  onSurfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.onSurfaceVariant),
    darkColor: Color(appMaterialDarkScheme.onSurfaceVariant),
    highContrastColor: Color(appMaterialLightScheme.onSurfaceVariant),
    darkHighContrastColor: Color(appMaterialDarkScheme.onSurfaceVariant),
  ).value,
  outline: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.outline),
    darkColor: Color(appMaterialDarkScheme.outline),
    highContrastColor: Color(appMaterialLightScheme.outline),
    darkHighContrastColor: Color(appMaterialDarkScheme.outline),
  ).value,
  shadow: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.shadow),
    darkColor: Color(appMaterialDarkScheme.shadow),
    highContrastColor: Color(appMaterialLightScheme.shadow),
    darkHighContrastColor: Color(appMaterialDarkScheme.shadow),
  ).value,
  inverseSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.inverseSurface),
    darkColor: Color(appMaterialDarkScheme.inverseSurface),
    highContrastColor: Color(appMaterialLightScheme.inverseSurface),
    darkHighContrastColor: Color(appMaterialDarkScheme.inverseSurface),
  ).value,
  inverseOnSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.inverseOnSurface),
    darkColor: Color(appMaterialDarkScheme.inverseOnSurface),
    highContrastColor: Color(appMaterialLightScheme.inverseOnSurface),
    darkHighContrastColor: Color(appMaterialDarkScheme.inverseOnSurface),
  ).value,
  inversePrimary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: Color(appMaterialLightScheme.inversePrimary),
    darkColor: Color(appMaterialDarkScheme.inversePrimary),
    highContrastColor: Color(appMaterialLightScheme.inversePrimary),
    darkHighContrastColor: Color(appMaterialDarkScheme.inversePrimary),
  ).value,
);

ColorScheme appMaterialLightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(appMaterialLightScheme.primary),
  onPrimary: Color(appMaterialLightScheme.onPrimary),
  primaryContainer: Color(appMaterialLightScheme.primaryContainer),
  onPrimaryContainer: Color(appMaterialLightScheme.onPrimaryContainer),
  secondary: Color(appMaterialLightScheme.secondary),
  onSecondary: Color(appMaterialLightScheme.onSecondary),
  secondaryContainer: Color(appMaterialLightScheme.secondaryContainer),
  onSecondaryContainer: Color(appMaterialLightScheme.onSecondaryContainer),
  tertiary: Color(appMaterialLightScheme.tertiary),
  onTertiary: Color(appMaterialLightScheme.onTertiary),
  tertiaryContainer: Color(appMaterialLightScheme.tertiaryContainer),
  onTertiaryContainer: Color(appMaterialLightScheme.onTertiaryContainer),
  error: Color(appMaterialLightScheme.error),
  onError: Color(appMaterialLightScheme.onError),
  errorContainer: Color(appMaterialLightScheme.errorContainer),
  onErrorContainer: Color(appMaterialLightScheme.onErrorContainer),
  outline: Color(appMaterialLightScheme.outline),
  shadow: Color(appMaterialLightScheme.shadow),
  background: Color(appMaterialLightScheme.background),
  onBackground: Color(appMaterialLightScheme.onBackground),
  surface: Color(appMaterialLightScheme.surface),
  onSurface: Color(appMaterialLightScheme.onSurface),
  surfaceVariant: Color(appMaterialLightScheme.surfaceVariant),
  onSurfaceVariant: Color(appMaterialLightScheme.onSurfaceVariant),
  inversePrimary: Color(appMaterialLightScheme.inversePrimary),
  inverseSurface: Color(appMaterialLightScheme.inverseSurface),
  onInverseSurface: Color(appMaterialLightScheme.inverseOnSurface),
);

ColorScheme appMaterialDarkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(appMaterialDarkScheme.primary),
  onPrimary: Color(appMaterialDarkScheme.onPrimary),
  primaryContainer: Color(appMaterialDarkScheme.primaryContainer),
  onPrimaryContainer: Color(appMaterialDarkScheme.onPrimaryContainer),
  secondary: Color(appMaterialDarkScheme.secondary),
  onSecondary: Color(appMaterialDarkScheme.onSecondary),
  secondaryContainer: Color(appMaterialDarkScheme.secondaryContainer),
  onSecondaryContainer: Color(appMaterialDarkScheme.onSecondaryContainer),
  tertiary: Color(appMaterialDarkScheme.tertiary),
  onTertiary: Color(appMaterialDarkScheme.onTertiary),
  tertiaryContainer: Color(appMaterialDarkScheme.tertiaryContainer),
  onTertiaryContainer: Color(appMaterialDarkScheme.onTertiaryContainer),
  error: Color(appMaterialDarkScheme.error),
  onError: Color(appMaterialDarkScheme.onError),
  errorContainer: Color(appMaterialDarkScheme.errorContainer),
  onErrorContainer: Color(appMaterialDarkScheme.onErrorContainer),
  outline: Color(appMaterialDarkScheme.outline),
  shadow: Color(appMaterialDarkScheme.shadow),
  background: Color(appMaterialDarkScheme.background),
  onBackground: Color(appMaterialDarkScheme.onBackground),
  surface: Color(appMaterialDarkScheme.surface),
  onSurface: Color(appMaterialDarkScheme.onSurface),
  surfaceVariant: Color(appMaterialDarkScheme.surfaceVariant),
  onSurfaceVariant: Color(appMaterialDarkScheme.onSurfaceVariant),
  inversePrimary: Color(appMaterialDarkScheme.inversePrimary),
  inverseSurface: Color(appMaterialDarkScheme.inverseSurface),
  onInverseSurface: Color(appMaterialDarkScheme.inverseOnSurface),
);

ColorScheme appCupertinoColorScheme = ColorScheme(
  brightness: appBrightness as Brightness,
  primary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.primary,
    darkColor: appMaterialDarkColorScheme.primary,
    highContrastColor: appMaterialLightColorScheme.primary,
    darkHighContrastColor: appMaterialDarkColorScheme.primary,
  ),
  onPrimary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onPrimary,
    darkColor: appMaterialDarkColorScheme.onPrimary,
    highContrastColor: appMaterialLightColorScheme.onPrimary,
    darkHighContrastColor: appMaterialDarkColorScheme.onPrimary,
  ),
  primaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.primaryContainer,
    darkColor: appMaterialDarkColorScheme.primaryContainer,
    highContrastColor: appMaterialLightColorScheme.primaryContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.primaryContainer,
  ),
  onPrimaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onPrimaryContainer,
    darkColor: appMaterialDarkColorScheme.onPrimaryContainer,
    highContrastColor: appMaterialLightColorScheme.onPrimaryContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.onPrimaryContainer,
  ),
  secondary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.secondary,
    darkColor: appMaterialDarkColorScheme.secondary,
    highContrastColor: appMaterialLightColorScheme.secondary,
    darkHighContrastColor: appMaterialDarkColorScheme.secondary,
  ),
  onSecondary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onSecondary,
    darkColor: appMaterialDarkColorScheme.onSecondary,
    highContrastColor: appMaterialLightColorScheme.onSecondary,
    darkHighContrastColor: appMaterialDarkColorScheme.onSecondary,
  ),
  secondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.secondaryContainer,
    darkColor: appMaterialDarkColorScheme.secondaryContainer,
    highContrastColor: appMaterialLightColorScheme.secondaryContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.secondaryContainer,
  ),
  onSecondaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onSecondaryContainer,
    darkColor: appMaterialDarkColorScheme.onSecondaryContainer,
    highContrastColor: appMaterialLightColorScheme.onSecondaryContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.onSecondaryContainer,
  ),
  tertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.tertiary,
    darkColor: appMaterialDarkColorScheme.tertiary,
    highContrastColor: appMaterialLightColorScheme.tertiary,
    darkHighContrastColor: appMaterialDarkColorScheme.tertiary,
  ),
  onTertiary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onTertiary,
    darkColor: appMaterialDarkColorScheme.onTertiary,
    highContrastColor: appMaterialLightColorScheme.onTertiary,
    darkHighContrastColor: appMaterialDarkColorScheme.onTertiary,
  ),
  tertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.tertiaryContainer,
    darkColor: appMaterialDarkColorScheme.tertiaryContainer,
    highContrastColor: appMaterialLightColorScheme.tertiaryContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.tertiaryContainer,
  ),
  onTertiaryContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onTertiaryContainer,
    darkColor: appMaterialDarkColorScheme.onTertiaryContainer,
    highContrastColor: appMaterialLightColorScheme.onTertiaryContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.onTertiaryContainer,
  ),
  error: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.error,
    darkColor: appMaterialDarkColorScheme.error,
    highContrastColor: appMaterialLightColorScheme.error,
    darkHighContrastColor: appMaterialDarkColorScheme.error,
  ),
  onError: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onError,
    darkColor: appMaterialDarkColorScheme.onError,
    highContrastColor: appMaterialLightColorScheme.onError,
    darkHighContrastColor: appMaterialDarkColorScheme.onError,
  ),
  errorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.errorContainer,
    darkColor: appMaterialDarkColorScheme.errorContainer,
    highContrastColor: appMaterialLightColorScheme.errorContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.errorContainer,
  ),
  onErrorContainer: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onErrorContainer,
    darkColor: appMaterialDarkColorScheme.onErrorContainer,
    highContrastColor: appMaterialLightColorScheme.onErrorContainer,
    darkHighContrastColor: appMaterialDarkColorScheme.onErrorContainer,
  ),
  outline: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.outline,
    darkColor: appMaterialDarkColorScheme.outline,
    highContrastColor: appMaterialLightColorScheme.outline,
    darkHighContrastColor: appMaterialDarkColorScheme.outline,
  ),
  shadow: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.shadow,
    darkColor: appMaterialDarkColorScheme.shadow,
    highContrastColor: appMaterialLightColorScheme.shadow,
    darkHighContrastColor: appMaterialDarkColorScheme.shadow,
  ),
  background: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.background,
    darkColor: appMaterialDarkColorScheme.background,
    highContrastColor: appMaterialLightColorScheme.background,
    darkHighContrastColor: appMaterialDarkColorScheme.background,
  ),
  onBackground: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onBackground,
    darkColor: appMaterialDarkColorScheme.onBackground,
    highContrastColor: appMaterialLightColorScheme.onBackground,
    darkHighContrastColor: appMaterialDarkColorScheme.onBackground,
  ),
  surface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.surface,
    darkColor: appMaterialDarkColorScheme.surface,
    highContrastColor: appMaterialLightColorScheme.surface,
    darkHighContrastColor: appMaterialDarkColorScheme.surface,
  ),
  onSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onSurface,
    darkColor: appMaterialDarkColorScheme.onSurface,
    highContrastColor: appMaterialLightColorScheme.onSurface,
    darkHighContrastColor: appMaterialDarkColorScheme.onSurface,
  ),
  surfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.surfaceVariant,
    darkColor: appMaterialDarkColorScheme.surfaceVariant,
    highContrastColor: appMaterialLightColorScheme.surfaceVariant,
    darkHighContrastColor: appMaterialDarkColorScheme.surfaceVariant,
  ),
  onSurfaceVariant: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onSurfaceVariant,
    darkColor: appMaterialDarkColorScheme.onSurfaceVariant,
    highContrastColor: appMaterialLightColorScheme.onSurfaceVariant,
    darkHighContrastColor: appMaterialDarkColorScheme.onSurfaceVariant,
  ),
  inversePrimary: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.inversePrimary,
    darkColor: appMaterialDarkColorScheme.inversePrimary,
    highContrastColor: appMaterialLightColorScheme.inversePrimary,
    darkHighContrastColor: appMaterialDarkColorScheme.inversePrimary,
  ),
  inverseSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.inverseSurface,
    darkColor: appMaterialDarkColorScheme.inverseSurface,
    highContrastColor: appMaterialLightColorScheme.inverseSurface,
    darkHighContrastColor: appMaterialDarkColorScheme.inverseSurface,
  ),
  onInverseSurface: CupertinoDynamicColor.withBrightnessAndContrast(
    color: appMaterialLightColorScheme.onInverseSurface,
    darkColor: appMaterialDarkColorScheme.onInverseSurface,
    highContrastColor: appMaterialLightColorScheme.onInverseSurface,
    darkHighContrastColor: appMaterialDarkColorScheme.onInverseSurface,
  ),
);

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
