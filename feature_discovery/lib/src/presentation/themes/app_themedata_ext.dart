// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: prefer_initializing_formals, unnecessary_this

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Gist: Theme.of(context) produces a new instance so we want to grab an entity in that
//       instance in which to attach our fields. That means the entity we grab cannot be
//       empty. In the Material ThemeData case it will be the colorScheme entity of ThemeData.

class AppThemeColorFields {
  final Color? appPrimaryOne;
  final Color? appOnPrimaryOne;
  final Color? appPrimaryContainerOne;
  final Color? appOnPrimaryContainerOne;
  final Color? appPrimaryTwo;
  final Color? appOnPrimaryTwo;
  final Color? appPrimaryContainerTwo;
  final Color? appOnPrimaryContainerTwo;
  final Color? appPrimaryThree;
  final Color? appOnPrimaryThree;
  final Color? appPrimaryContainerThree;
  final Color? appOnPrimaryContainerThree;

  const AppThemeColorFields({
    Color? appPrimaryOne,
    Color? appOnPrimaryOne,
    Color? appPrimaryContainerOne,
    Color? appOnPrimaryContainerOne,
    Color? appPrimaryTwo,
    Color? appOnPrimaryTwo,
    Color? appPrimaryContainerTwo,
    Color? appOnPrimaryContainerTwo,
    Color? appPrimaryThree,
    Color? appOnPrimaryThree,
    Color? appPrimaryContainerThree,
    Color? appOnPrimaryContainerThree,
  })  : this.appPrimaryOne = appPrimaryOne,
        this.appOnPrimaryOne = appOnPrimaryOne,
        this.appPrimaryContainerOne = appPrimaryContainerOne,
        this.appOnPrimaryContainerOne = appOnPrimaryContainerOne,
        this.appPrimaryTwo = appPrimaryTwo,
        this.appOnPrimaryTwo = appOnPrimaryTwo,
        this.appPrimaryContainerTwo = appPrimaryContainerTwo,
        this.appOnPrimaryContainerTwo = appOnPrimaryContainerTwo,
        this.appPrimaryThree = appPrimaryThree,
        this.appOnPrimaryThree = appOnPrimaryThree,
        this.appPrimaryContainerThree = appPrimaryContainerThree,
        this.appOnPrimaryContainerThree = appOnPrimaryContainerThree;

  factory AppThemeColorFields.empty() {
    return const AppThemeColorFields();
  }
}

class AppCupertinoColorFields {
  final Color? appPrimary;
  final Color? appOnPrimary;
  final Color? appPrimaryContainer;
  final Color? appOnPrimaryContainer;
  final Color? appSecondary;
  final Color? appOnSecondary;
  final Color? appSecondaryContainer;
  final Color? appOnSecondaryContainer;
  final Color? appTertiary;
  final Color? appOnTertiary;
  final Color? appTertiaryContainer;
  final Color? appOnTertiaryContainer;
  final Color? appError;
  final Color? appOnError;
  final Color? appErrorContainer;
  final Color? appOnErrorContainer;
  final Color? appBackground;
  final Color? appOnBackground;
  final Color? appSurface;
  final Color? appOnSurface;
  final Color? appSurfaceVariant;
  final Color? appOnSurfaceVariant;
  final Color? appOutline;
  final Color? appShadow;
  final Color? appInverseSurface;
  final Color? appOnInverseSurface;
  final Color? appInversePrimary;
  final Color? appPrimaryOne;
  final Color? appOnPrimaryOne;
  final Color? appPrimaryContainerOne;
  final Color? appOnPrimaryContainerOne;
  final Color? appPrimaryTwo;
  final Color? appOnPrimaryTwo;
  final Color? appPrimaryContainerTwo;
  final Color? appOnPrimaryContainerTwo;
  final Color? appPrimaryThree;
  final Color? appOnPrimaryThree;
  final Color? appPrimaryContainerThree;
  final Color? appOnPrimaryContainerThree;

  const AppCupertinoColorFields({
    Color? appPrimary,
    Color? appOnPrimary,
    Color? appPrimaryContainer,
    Color? appOnPrimaryContainer,
    Color? appSecondary,
    Color? appOnSecondary,
    Color? appSecondaryContainer,
    Color? appOnSecondaryContainer,
    Color? appTertiary,
    Color? appOnTertiary,
    Color? appTertiaryContainer,
    Color? appOnTertiaryContainer,
    Color? appError,
    Color? appOnError,
    Color? appErrorContainer,
    Color? appOnErrorContainer,
    Color? appBackground,
    Color? appOnBackground,
    Color? appSurface,
    Color? appOnSurface,
    Color? appSurfaceVariant,
    Color? appOnSurfaceVariant,
    Color? appOutline,
    Color? appShadow,
    Color? appInverseSurface,
    Color? appOnInverseSurface,
    Color? appInversePrimary,
    Color? appPrimaryOne,
    Color? appOnPrimaryOne,
    Color? appPrimaryContainerOne,
    Color? appOnPrimaryContainerOne,
    Color? appPrimaryTwo,
    Color? appOnPrimaryTwo,
    Color? appPrimaryContainerTwo,
    Color? appOnPrimaryContainerTwo,
    Color? appPrimaryThree,
    Color? appOnPrimaryThree,
    Color? appPrimaryContainerThree,
    Color? appOnPrimaryContainerThree,
  })  : this.appPrimary = appPrimary,
        this.appOnPrimary = appOnPrimary,
        this.appPrimaryContainer = appPrimaryContainer,
        this.appOnPrimaryContainer = appOnPrimaryContainer,
        this.appSecondary = appSecondary,
        this.appOnSecondary = appOnSecondary,
        this.appSecondaryContainer = appSecondaryContainer,
        this.appOnSecondaryContainer = appOnSecondaryContainer,
        this.appTertiary = appTertiary,
        this.appOnTertiary = appOnTertiary,
        this.appTertiaryContainer = appTertiaryContainer,
        this.appOnTertiaryContainer = appOnTertiaryContainer,
        this.appError = appError,
        this.appOnError = appOnError,
        this.appErrorContainer = appErrorContainer,
        this.appOnErrorContainer = appOnErrorContainer,
        this.appBackground = appBackground,
        this.appOnBackground = appOnBackground,
        this.appSurface = appSurface,
        this.appOnSurface = appOnSurface,
        this.appSurfaceVariant = appSurfaceVariant,
        this.appOnSurfaceVariant = appOnSurfaceVariant,
        this.appOutline = appOutline,
        this.appShadow = appShadow,
        this.appInverseSurface = appInverseSurface,
        this.appOnInverseSurface = appOnInverseSurface,
        this.appInversePrimary = appInversePrimary,
        this.appPrimaryOne = appPrimaryOne,
        this.appOnPrimaryOne = appOnPrimaryOne,
        this.appPrimaryContainerOne = appPrimaryContainerOne,
        this.appOnPrimaryContainerOne = appOnPrimaryContainerOne,
        this.appPrimaryTwo = appPrimaryTwo,
        this.appOnPrimaryTwo = appOnPrimaryTwo,
        this.appPrimaryContainerTwo = appPrimaryContainerTwo,
        this.appOnPrimaryContainerTwo = appOnPrimaryContainerTwo,
        this.appPrimaryThree = appPrimaryThree,
        this.appOnPrimaryThree = appOnPrimaryThree,
        this.appPrimaryContainerThree = appPrimaryContainerThree,
        this.appOnPrimaryContainerThree = appOnPrimaryContainerThree;

  factory AppCupertinoColorFields.empty() {
    return const AppCupertinoColorFields();
  }
}

class AppCupertinoTextFields {
  final TextStyle? appDisplayLarge;
  final TextStyle? appDisplayMedium;
  final TextStyle? appDisplaySmall;
  final TextStyle? appHeadlineLarge;
  final TextStyle? appHeadlineMedium;
  final TextStyle? appHeadlineSmall;
  final TextStyle? appTitleLarge;
  final TextStyle? appTitleMedium;
  final TextStyle? appTitleSmall;
  final TextStyle? appBodyLarge;
  final TextStyle? appBodyMedium;
  final TextStyle? appBodySmall;
  final TextStyle? appLabelLarge;
  final TextStyle? appLabelMedium;
  final TextStyle? appLabelSmall;

  const AppCupertinoTextFields({
    TextStyle? appDisplayLarge,
    TextStyle? appDisplayMedium,
    TextStyle? appDisplaySmall,
    TextStyle? appHeadlineLarge,
    TextStyle? appHeadlineMedium,
    TextStyle? appHeadlineSmall,
    TextStyle? appTitleLarge,
    TextStyle? appTitleMedium,
    TextStyle? appTitleSmall,
    TextStyle? appBodyLarge,
    TextStyle? appBodyMedium,
    TextStyle? appBodySmall,
    TextStyle? appLabelLarge,
    TextStyle? appLabelMedium,
    TextStyle? appLabelSmall,
  })  : this.appDisplayLarge = appDisplayLarge,
        this.appDisplayMedium = appDisplayMedium,
        this.appDisplaySmall = appDisplaySmall,
        this.appHeadlineLarge = appHeadlineLarge,
        this.appHeadlineMedium = appHeadlineMedium,
        this.appHeadlineSmall = appHeadlineSmall,
        this.appTitleLarge = appTitleLarge,
        this.appTitleMedium = appTitleMedium,
        this.appTitleSmall = appTitleSmall,
        this.appBodyLarge = appBodyLarge,
        this.appBodyMedium = appBodyMedium,
        this.appBodySmall = appBodySmall,
        this.appLabelLarge = appLabelLarge,
        this.appLabelMedium = appLabelMedium,
        this.appLabelSmall = appLabelSmall;

  factory AppCupertinoTextFields.empty() {
    return const AppCupertinoTextFields();
  }
}

extension AppColorThemeExt on ThemeData {
  static final Map<ColorScheme, AppThemeColorFields> _own = {};

  void addThemeDataColorFields(AppThemeColorFields own) {
    // Theme.of() and thus platformThemeData builder ref wil be anew instance so I need to
    // use internal fields which are no deep copied but simply a reference is copied. That
    // also means that when I do use the Theme.of() refs that new instance will thus have my added fields.
    //
    // A whole betern than implementing the ThemeData or other interfaces and thus directly
    // coupling to any SDK changes ocurring per each SDK update.
    _own[this.colorScheme] = own;
  }

  // ignore: avoid_init_to_null
  static AppThemeColorFields? empty = null;

  AppThemeColorFields? own() {
    final o = _own[this.navigationRailTheme];
    if (o == null) {
      empty ??= AppThemeColorFields.empty();
    }

    return o;
  }
}

// If primary color not supplied, then a default is supplied accoding to
// source docs, see: https://github.com/flutter/flutter/blob/master/packages/flutter/lib/src/cupertino/theme.dart
// thus primaryColor will never be null and hence easy to grab.
extension CupertinoColorThemeExt on CupertinoThemeData {
  static final Map<Color, AppCupertinoColorFields> _own = {};

  void addThemeDataColorFields(AppCupertinoColorFields own) {
    // Theme.of() and thus platformThemeData builder ref wil be anew instance so I need to
    // use internal fields which are no deep copied but simply a reference is copied. That
    // also means that when I do use the Theme.of() refs that new instance will thus have my added fields.
    //
    // A whole betern than implementing the ThemeData or other interfaces and thus directly
    // coupling to any SDK changes ocurring per each SDK update.
    _own[this.primaryColor] = own;
  }

  // ignore: avoid_init_to_null
  static AppCupertinoColorFields? empty = null;

  AppCupertinoColorFields? ownColor() {
    final o = _own[this.textTheme];
    if (o == null) {
      empty ??= AppCupertinoColorFields.empty();
    }

    return o;
  }
}

extension CupertinoTextThemeExt on CupertinoThemeData {
  static final Map<CupertinoTextThemeData, AppCupertinoTextFields> _own = {};

  void addThemeDataTextFields(AppCupertinoTextFields own) {
    // Theme.of() and thus platformThemeData builder ref wil be anew instance so I need to
    // use internal fields which are no deep copied but simply a reference is copied. That
    // also means that when I do use the Theme.of() refs that new instance will thus have my added fields.
    //
    // A whole betern than implementing the ThemeData or other interfaces and thus directly
    // coupling to any SDK changes ocurring per each SDK update.
    _own[this.textTheme] = own;
  }

  // ignore: avoid_init_to_null
  static AppCupertinoTextFields? empty = null;

  AppCupertinoTextFields? ownText() {
    final o = _own[this.textTheme];
    if (o == null) {
      empty ??= AppCupertinoTextFields.empty();
    }

    return o;
  }
}
