// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:custom_perm_drawer/src/presentation/themes/app_theme_colors.dart';
import 'package:flutter/material.dart';



// Under MD3 Widgets have a 28dp rounded corners
double widgetRadius = 28.0;

double hoverStateOpacity = 0.08;
double focusStateOpacity = 0.12;
double pressedStateOpacity = 0.12;
double draggedStateOpacity = 0.16;

double elevationOne = 1;
double elevationTwo = 2;
double elevationThree = 3;
double elevationFour = 4;
double elevationFive = 6;
double elevationSix = 8;
double elevationSeven = 9;
double elevationEight = 12;
double elevationNine = 16;
double elevationTen = 24;

Color appMaterialLightHighLightColor = const Color(0x29000000);
Color appMaterialLightSplashColor = const Color(0x1f000000);
Color appMaterialDarkHighLightColor = const Color(0x29ffffff);
Color appMaterialDarkSplashColor = const Color(0x1fffffff);

Color appMaterialLightPrimarySurfaceColor = appMaterialLightColorScheme.primary;
Color appMaterialLightOnPrimarySurfaceColor =
    appMaterialLightColorScheme.onPrimary;
Color appMaterialDarkPrimarySurfaceColor = appMaterialLightColorScheme.surface;
Color appMaterialDarkOnPrimarySurfaceColor =
    appMaterialDarkColorScheme.onSurface;
Color appMaterialLightPrimaryColor = appMaterialLightPrimarySurfaceColor;
Color appMaterialDarkPrimaryColor = appMaterialDarkPrimarySurfaceColor;

Color appMaterialLightCanvasColor = appMaterialLightColorScheme.background;
Color appMaterialDarkCanvasColor = appMaterialDarkColorScheme.background;

Color appMaterialLightScaffoldBackgroundColor =
    appMaterialLightColorScheme.background;
Color appMaterialDarkScaffoldBackgroundColor =
    appMaterialDarkColorScheme.background;

Color appMaterialLightBottomAppBarColor = appMaterialLightColorScheme.surface;
Color appMaterialDarkBottomAppBarColor = appMaterialDarkColorScheme.surface;

Color appMaterialLightCardColor = appMaterialLightColorScheme.surface;
Color appMaterialDarkCardColor = appMaterialDarkColorScheme.surface;

Color appMaterialLightDividerColor = appMaterialLightColorScheme.outline;
Color appMaterialDarkDividerColor = appMaterialDarkColorScheme.outline;

Color appMaterialLightBackgroundColor = appMaterialLightColorScheme.background;
Color appMaterialDarkBackgroundColor = appMaterialDarkColorScheme.background;

Color appMaterialLightDialogBackgroundColor =
    appMaterialLightColorScheme.background;
Color appMaterialDarkDialogBackgroundColor =
    appMaterialDarkColorScheme.background;

Color appMaterialLightIndicatorColor = appMaterialLightOnPrimarySurfaceColor;
Color appMaterialDarkIndicatorColor = appMaterialDarkOnPrimarySurfaceColor;

Color appMaterialLightErrorColor = appMaterialLightColorScheme.error;
Color appMaterialDarkErrorColor = appMaterialDarkColorScheme.error;

Color appMaterialLightFocusColor = Colors.white.withOpacity(0.12);
Color appMaterialDarkFocusColor = Colors.black.withOpacity(0.12);

Color appMaterialLightHoverColor = Colors.white.withOpacity(0.04);
Color appMaterialDarkHoverColor = Colors.black.withOpacity(0.04);

// Note, I set nav bar shadows separately to match MD3
Color appMaterialLightShadowColor = Colors.black;
Color appMaterialDarkShadowColor = Colors.black;

Color appMaterialLightSelectedRowColor =
    appMaterialLightColorScheme.primaryContainer;
Color appMaterialDarkSelectedRowColor =
    appMaterialDarkColorScheme.primaryContainer;

Color appMaterialLightUnselectedWidgetColor =
    appMaterialLightColorScheme.secondaryContainer;
Color appMaterialDarkUnselectedWidgetColor =
    appMaterialDarkColorScheme.secondaryContainer;

Color appMaterialLightSecondaryHeaderColor =
    appMaterialLightColorScheme.secondary;

Color appMaterialDarkSecondaryHeaderColor =
    appMaterialDarkColorScheme.secondary;

Color appMaterialLightHintColor = appMaterialLightColorScheme.inversePrimary;
Color appMaterialDarkHintColor = appMaterialDarkColorScheme.inversePrimary;

Color appMaterialLightDisabledColor =
    appMaterialLightColorScheme.tertiaryContainer;
Color appMaterialDarkDisabledColor =
    appMaterialDarkColorScheme.tertiaryContainer;

Color appMaterialLightToggleableActiveColor =
    appMaterialLightColorScheme.primaryContainer;
Color appMaterialDarkToggleableActiveColor =
    appMaterialDarkColorScheme.primaryContainer;
