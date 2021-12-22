// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_theme_colors.dart';

Color appMaterialLightHighLightColor = const Color(0x29000000);
Color appMaterialLightSplashColor = const Color(0x1f000000);
Color appMaterialDarkHighLightColor = const Color(0x29ffffff);
Color appMaterialDarkSplashColor = const Color(0x1fffffff);

CupertinoDynamicColor appCupertinoHighLightColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightHighLightColor,
  darkColor: appMaterialDarkHighLightColor,
);

CupertinoDynamicColor appCupertinoSplashColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightSplashColor,
  darkColor: appMaterialDarkSplashColor,
);

Color appMaterialLightPrimarySurfaceColor = appMaterialLightColorScheme.primary;
Color appMaterialLightOnPrimarySurfaceColor =
    appMaterialLightColorScheme.onPrimary;
Color appMaterialDarkPrimarySurfaceColor = appMaterialLightColorScheme.surface;
Color appMaterialDarkOnPrimarySurfaceColor =
    appMaterialDarkColorScheme.onSurface;
Color appMaterialLightPrimaryColor = appMaterialLightPrimarySurfaceColor;
Color appMaterialDarkPrimaryColor = appMaterialDarkPrimarySurfaceColor;

CupertinoDynamicColor appCupertinoPrimarySurfaceColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightPrimarySurfaceColor,
  darkColor: appMaterialDarkPrimarySurfaceColor,
);

CupertinoDynamicColor appCupertinoOnPrimarySurfaceColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightOnPrimarySurfaceColor,
  darkColor: appMaterialDarkOnPrimarySurfaceColor,
);

CupertinoDynamicColor appCupertinoPrimaryColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightPrimaryColor,
  darkColor: appMaterialDarkPrimaryColor,
);

Color appMaterialLightCanvasColor = appMaterialLightColorScheme.background;
Color appMaterialDarkCanvasColor = appMaterialDarkColorScheme.background;

CupertinoDynamicColor appCupertinoCanvasColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightCanvasColor,
  darkColor: appMaterialDarkCanvasColor,
);

Color appMaterialLightScaffoldBackgroundColor =
    appMaterialLightColorScheme.background;
Color appMaterialDarkScaffoldBackgroundColor =
    appMaterialDarkColorScheme.background;

CupertinoDynamicColor appCupertinoScaffoldBackgroundColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightScaffoldBackgroundColor,
  darkColor: appMaterialDarkScaffoldBackgroundColor,
);

Color appMaterialLightBottomAppBarColor = appMaterialLightColorScheme.surface;
Color appMaterialDarkBottomAppBarColor = appMaterialDarkColorScheme.surface;

CupertinoDynamicColor appCupertinoBottomAppBarColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightBottomAppBarColor,
  darkColor: appMaterialDarkBottomAppBarColor,
);

Color appMaterialLightCardColor = appMaterialLightColorScheme.surface;
Color appMaterialDarkCardColor = appMaterialDarkColorScheme.surface;

CupertinoDynamicColor appCupertinoCardColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightCardColor,
  darkColor: appMaterialDarkCardColor,
);

Color appMaterialLightDividerColor = appMaterialLightColorScheme.outline;
Color appMaterialDarkDividerColor = appMaterialDarkColorScheme.outline;

CupertinoDynamicColor appCupertinoDividerColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightDividerColor,
  darkColor: appMaterialDarkDividerColor,
);

Color appMaterialLightBackgroundColor = appMaterialLightColorScheme.background;
Color appMaterialDarkBackgroundColor = appMaterialDarkColorScheme.background;

CupertinoDynamicColor appCupertinoBackgroundColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightBackgroundColor,
  darkColor: appMaterialDarkBackgroundColor,
);

Color appMaterialLightDialogBackgroundColor =
    appMaterialLightColorScheme.background;
Color appMaterialDarkDialogBackgroundColor =
    appMaterialDarkColorScheme.background;

CupertinoDynamicColor appCupertinoDialogBackgroundColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightDialogBackgroundColor,
  darkColor: appMaterialDarkDialogBackgroundColor,
);

Color appMaterialLightIndicatorColor = appMaterialLightOnPrimarySurfaceColor;
Color appMaterialDarkIndicatorColor = appMaterialDarkOnPrimarySurfaceColor;

CupertinoDynamicColor appCupertinoIndicatorColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightIndicatorColor,
  darkColor: appMaterialDarkIndicatorColor,
);

Color appMaterialLightErrorColor = appMaterialLightColorScheme.error;
Color appMaterialDarkErrorColor = appMaterialDarkColorScheme.error;

CupertinoDynamicColor appCupertinoErrorColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightErrorColor,
  darkColor: appMaterialDarkErrorColor,
);

Color appMaterialLightFocusColor = Colors.white.withOpacity(0.12);
Color appMaterialDarkFocusColor = Colors.black.withOpacity(0.12);

CupertinoDynamicColor appCupertinoFocusColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightFocusColor,
  darkColor: appMaterialDarkFocusColor,
);

Color appMaterialLightHoverColor = Colors.white.withOpacity(0.04);
Color appMaterialDarkHoverColor = Colors.black.withOpacity(0.04);

CupertinoDynamicColor appCupertinoHoverColor =
    CupertinoDynamicColor.withBrightness(
        color: appMaterialLightHoverColor,
        darkColor: appMaterialDarkHoverColor,);

// Note, I set nav bar shadows separately to match MD3
Color appMaterialLightShadowColor = Colors.black;
Color appMaterialDarkShadowColor = Colors.black;

CupertinoDynamicColor appCupertinoShadowColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightShadowColor,
  darkColor: appMaterialDarkShadowColor,
);

Color appMaterialLightSelectedRowColor =
    appMaterialLightColorScheme.primaryContainer;
Color appMaterialDarkSelectedRowColor =
    appMaterialDarkColorScheme.primaryContainer;

CupertinoDynamicColor appCupertinoSelectedRowColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightShadowColor,
  darkColor: appMaterialDarkSelectedRowColor,
);

Color appMaterialLightUnselectedWidgetColor =
    appMaterialLightColorScheme.secondaryContainer;
Color appMaterialDarkUnselectedWidgetColor =
    appMaterialDarkColorScheme.secondaryContainer;

CupertinoDynamicColor appCupertinoUnselectedWidgetColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightUnselectedWidgetColor,
  darkColor: appMaterialDarkUnselectedWidgetColor,
);

Color appMaterialLightSecondaryHeaderColor =
    appMaterialLightColorScheme.secondary;

Color appMaterialDarkSecondaryHeaderColor =
    appMaterialDarkColorScheme.secondary;

CupertinoDynamicColor appCupertinoSecondaryHeaderColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightSecondaryHeaderColor,
  darkColor: appMaterialDarkSecondaryHeaderColor,
);

Color appMaterialLightHintColor = appMaterialLightColorScheme.inversePrimary;
Color appMaterialDarkHintColor = appMaterialDarkColorScheme.inversePrimary;

CupertinoDynamicColor appCupertinoHintColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightHintColor,
  darkColor: appMaterialDarkHintColor,
);

Color appMaterialLightDisabledColor =
    appMaterialLightColorScheme.tertiaryContainer;
Color appMaterialDarkDisabledColor =
    appMaterialDarkColorScheme.tertiaryContainer;

CupertinoDynamicColor appCupertinoDisabledColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightDisabledColor,
  darkColor: appMaterialDarkDisabledColor,
);

Color appMaterialLightToggleableActiveColor =
    appMaterialLightColorScheme.primaryContainer;
Color appMaterialDarkToggleableActiveColor =
    appMaterialDarkColorScheme.primaryContainer;

CupertinoDynamicColor appCupertinoToggleableActiveColor =
    CupertinoDynamicColor.withBrightness(
  color: appMaterialLightToggleableActiveColor,
  darkColor: appMaterialDarkToggleableActiveColor,
);
