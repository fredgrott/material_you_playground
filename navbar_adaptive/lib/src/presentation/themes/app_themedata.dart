// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Note: Tech Debt details are from this doc:
//        flutter.dev/go/material-theme-system-updates
//
//         hoverColor and focusColor are desktop settings
//
//         canvasColor is backgroundColor of
//         Material ProgressIndicator, OutlineButton, and DropDownButtons.
//
//         backgroundColor is used for background color of
//         LinearProgressIndicator, Stepper, Snackbar, DatePicker, and
//         TimePeicker.
//
//         A Normalized UI-Theme'd Component has:
//           -UI-NamedTheme that is an Inherited Theme
//           -UI-NamedThemeData
//              which can use UINamedThemeData.of(context) if
//              that is at root of Widget Tree.
//
//         ThemeData brightness is just a getter ahd thus set to ColorScheme app
//         brightness.
//
//            primaryColorBrightness ??=
//                  estimateBrightnessForColor(primaryColor);
//            accentColorBrightness ??=
//               estimateBrightnessForColor(accentColor);
//
//        are computed so no one should set them.
//
//       MD3 elevations are from 1-5 for neutral surfaces such as surfaces backgorunds etc.
//
//       These
//        final Color primarySurfaceColor = isDark ? colorScheme.surface : colorScheme.primary;
//      final Color onPrimarySurfaceColor = isDark ? colorScheme.onSurface : colorScheme.onPrimary;
//        primaryColor = primarySurfaceColor;
//      primaryColorBrightness = ThemeData.estimateBrightnessForColor(primarySurfaceColor);
//      canvasColor ??= colorScheme.background;
//      accentColor ??= colorScheme.secondary;
//      accentColorBrightness ??= ThemeData.estimateBrightnessForColor(colorScheme.secondary);
//      scaffoldBackgroundColor ??= colorScheme.background;
//      bottomAppBarColor ??= colorScheme.surface;
//      cardColor ??= colorScheme.surface;
//      dividerColor ??= colorScheme.outline;
//      backgroundColor ??= colorScheme.background;
//      dialogBackgroundColor ??= colorScheme.background;
//      indicatorColor ??= onPrimarySurfaceColor;
//      errorColor ??= colorScheme.error;
//      applyElevationOverlayColor ??= isDark;
//
//     Means that I do not set:
//         primarySurfaceColor
//         onPrimarySurfaceColor
//        primaryColor
//        primaryColorBrightness
//        canvasColor
//        accentColor
//        accentColorBrightness
//        scaffoldBackgroundColor
//        bottomAppBarColor
//        cardColor
//        dividerColor
//        backgroundColor
//        dialogBackgroundColor
//        indicatorColor
//        errorColor
//        appEvevationOverlayColor
//       shdowColor
//       toggleableActiveColor
//      focusColor
//      hoverColor
//     selectedRowColor
//     unslectedWidgetColor
//     secondaryHeaderColor
//     hintColor
//     highlightColor
//     disableColor
//     splashColor



import 'package:flutter/material.dart';
import 'package:navbar_adaptive/src/infrastrucutre/app_vars.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_appbar_theme.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_drawer_themedata.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_icon_theme.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_listtile_themedata.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_navigationbar_themedata.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_navigationrail_themedata.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_scrollbar_themedata.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_text_theme.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_theme_colors.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_typography.dart';

ThemeData appMaterialLightThemeData = ThemeData(
  applyElevationOverlayColor: true,
  // this would be set if we are using non-material themes for cupertino widgets.
  //cupertinoOverrideTheme:
  // this only gets set on the Cupertino Widget side as non-Apple devices use the
  // material default
  // materialTapTargetSize:

  // I set it this way to deal with all the variance in screen-sizes
  visualDensity: VisualDensity.adaptivePlatformDensity,

  // need this set as I am using the new Material design 3 widgets
  // remember it also means more setup UI component wise to get
  //  colors right
  useMaterial3: true,

  brightness: Brightness.light,

  // we set this for the base-line app theme colors which uses the MCU package Scheme class
  // to set the ColorScheme. And we can go both ways; one can set this and then go with the
  // default computed ColorScheme from Scheme that ColorScheme class sets or we can set our
  // own and that would come in handy for those devices that do not have dynamic color.
  colorSchemeSeed: appColorSeed,

  // this is auto-set by target platform
  //pageTransitionsTheme:
  // this is auto-set
  //platform:

  scrollbarTheme: appMaterialLightScrollbarThemeData,
  colorScheme: appMaterialLightColorScheme,

  
  
  
  
  // Keep in mind under MD3 we set nav bar shadows to transparency
  
  // migration to MD3 by framework, hopefully gets rid of this at some time.
  
  // we do not have one with implemented adaptive nav patterns
  //bottomAppBarColor:
  
  
  
  
  
  toggleableActiveColor: appMaterialLightColorScheme.primaryContainer,
  typography: appMaterialTypography,

  //All these are auto set black or white depending on dark mode
  // which will not work under light theme for MD3 as then it should be tertiary on
  //
  // textTheme
  // primaryTextTheme
  // accenttextTheme

  textTheme: appMateriaLightTextTheme,
  primaryTextTheme: appMaterialLightPrimaryTextTheme,
  iconTheme: appMaterialLightIconThemeData,
  primaryIconTheme: appMaterialLightPrimaryIconTheme,
  appBarTheme: appMaterialLightAppBarTheme,
  drawerTheme: appMaterialLightDrawerThemeData,
  listTileTheme: appMaterialLightListTileThemeData,
  navigationBarTheme: appMaterialLightNavigationBarThemeData,
  navigationRailTheme: appMaterialLightNavigationRailThemeData,
);

ThemeData appMaterialDarkThemeData = ThemeData(
  applyElevationOverlayColor: true,
  // this would be set if we are using non-material themes for cupertino widgets.
  //cupertinoOverrideTheme:
  // this only gets set on the Cupertino Widget side as non-Apple devices use the
  // material default
  // materialTapTargetSize:

  // I set it this way to deal with all the variance in screen-sizes
  visualDensity: VisualDensity.adaptivePlatformDensity,

  // need this set as I am using the new Material design 3 widgets
  // remember it also means more setup UI component wise to get
  //  colors right
  useMaterial3: true,

  brightness: Brightness.dark,

  // we set this for the base-line app theme colors which uses the MCU package Scheme class
  // to set the ColorScheme. And we can go both ways; one can set this and then go with the
  // default computed ColorScheme from Scheme that ColorScheme class sets or we can set our
  // own and that would come in handy for those devices that do not have dynamic color.
  colorSchemeSeed: appColorSeed,
  // this is auto-set by target platform
  //pageTransitionsTheme:
  // this is auto-set
  //platform:
  scrollbarTheme: appMaterialDarkScrollbarThemeData,
  colorScheme: appMaterialDarkColorScheme,
  //desktop
  
  
  
  
  
  toggleableActiveColor: appMaterialDarkColorScheme.primaryContainer,
  typography: appMaterialTypography,
  textTheme: appMateriaDarkTextTheme,
  primaryTextTheme: appMaterialDarkPrimaryTextTheme,
  iconTheme: appMaterialDarkIconThemeData,
  primaryIconTheme: appMaterialDarkPrimaryIconTheme,
  appBarTheme: appMaterialDarkAppBarTheme,
  drawerTheme: appMaterialDarkDrawerThemeData,
  listTileTheme: appMaterialDarkListTileThemeData,
  navigationBarTheme: appMaterialDarkNavigationBarThemeData,
  navigationRailTheme: appMaterialDarkNavigationRailThemeData,
);

ThemeData cupertinoThemeData = ThemeData(
  applyElevationOverlayColor: true,
  // this would be set if we are using non-material themes for cupertino widgets.
  //cupertinoOverrideTheme:
  // this only gets set on the Cupertino Widget side as non-Apple devices use the
  // material default. This is the Apple device settiong
  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,

  // I set it this way to deal with all the variance in screen-sizes
  visualDensity: VisualDensity.adaptivePlatformDensity,

  // need this set as I am using the new Material design 3 widgets
  // remember it also means more setup UI component wise to get
  //  colors right
  useMaterial3: true,

  brightness: appBrightness,

  // we set this for the base-line app theme colors which uses the MCU package Scheme class
  // to set the ColorScheme. And we can go both ways; one can set this and then go with the
  // default computed ColorScheme from Scheme that ColorScheme class sets or we can set our
  // own and that would come in handy for those devices that do not have dynamic color.
  colorSchemeSeed: appColorSeed,
  // this is auto-set by target platform
  //pageTransitionsTheme:
  // this is auto-set
  //platform:
  scrollbarTheme: appCupertinoScrollbarThemeData,
  colorScheme: appCupertinoColorScheme,
  //desktop
  
  
  
  
  toggleableActiveColor: appCupertinoColorScheme.primaryContainer,
  typography: appMaterialTypography,
  textTheme: appCupertinoTextTheme,
  primaryTextTheme: appCupertinoPrimaryTextTheme,
  iconTheme: appCupertinoIconThemeData,
  primaryIconTheme: appCupertinoPrimaryIconTheme,
  appBarTheme: appCupertinoAppBarTheme,
  drawerTheme: appCupertinoDrawerThemeData,
  listTileTheme: appCupertinoListTileThemeData,
  navigationBarTheme: appCupertinoNavigationBarThemeData,
  navigationRailTheme: appCupertinoNavigationRailThemeData,
);

MaterialBasedCupertinoThemeData materialBasedCupertinoThemeData =
    MaterialBasedCupertinoThemeData(materialTheme: cupertinoThemeData);
