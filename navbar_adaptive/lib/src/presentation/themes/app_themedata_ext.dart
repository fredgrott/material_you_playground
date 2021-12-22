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
extension CupertinoColorThemeExt on MaterialBasedCupertinoThemeData {
  static final Map<Color, AppThemeColorFields> _own = {};

  void addThemeDataColorFields(AppThemeColorFields own) {
    // Theme.of() and thus platformThemeData builder ref wil be anew instance so I need to
    // use internal fields which are no deep copied but simply a reference is copied. That
    // also means that when I do use the Theme.of() refs that new instance will thus have my added fields.
    //
    // A whole betern than implementing the ThemeData or other interfaces and thus directly
    // coupling to any SDK changes ocurring per each SDK update.
    _own[this.primaryColor] = own;
  }

  // ignore: avoid_init_to_null
  static AppThemeColorFields? empty = null;

  AppThemeColorFields? own() {
    final o = _own[this.textTheme];
    if (o == null) {
      empty ??= AppThemeColorFields.empty();
    }

    return o;
  }
}
