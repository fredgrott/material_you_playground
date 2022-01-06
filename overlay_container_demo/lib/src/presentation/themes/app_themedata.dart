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

// Implementation Note: Since I use Flutter Portal I cannot set CardTheme in
// ThemeData and have to set theme for cards by card.

import 'package:flutter/material.dart';
import 'package:grott_scaffold_one/src/infrastrucutre/app_vars.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_appbar_theme.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_button_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_card_theme.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_drawer_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_elevatedbutton_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_floating_action_button_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_icon_theme.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_listtile_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_navigationbar_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_navigationrail_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_scrollbar_themedata.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_text_theme.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_theme_colors.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_theme_data_defaults.dart';
import 'package:grott_scaffold_one/src/presentation/themes/app_typography.dart';




import 'app_themedata_ext.dart';

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

  //brightness: Brightness.light,

  // this is auto-set by target platform
  //pageTransitionsTheme:
  // this is auto-set
  //platform:

  scrollbarTheme: appMaterialLightScrollbarThemeData,
  colorScheme: appMaterialLightColorScheme,

  highlightColor: appMaterialLightHighLightColor,
  splashColor: appMaterialLightSplashColor,
  primaryColor: appMaterialLightPrimaryColor,
  canvasColor: appMaterialLightCanvasColor,
  scaffoldBackgroundColor: appMaterialLightScaffoldBackgroundColor,
  bottomAppBarColor: appMaterialLightBottomAppBarColor,
  cardColor: appMaterialLightCardColor,
  dividerColor: appMaterialLightDividerColor,
  backgroundColor: appMaterialLightBackgroundColor,
  dialogBackgroundColor: appMaterialLightDialogBackgroundColor,
  indicatorColor: appMaterialLightIndicatorColor,
  errorColor: appMaterialLightErrorColor,
  focusColor: appMaterialLightFocusColor,
  hoverColor: appMaterialLightHoverColor,
  shadowColor: appMaterialLightShadowColor,
  selectedRowColor: appMaterialLightSelectedRowColor,
  unselectedWidgetColor: appMaterialLightUnselectedWidgetColor,
  secondaryHeaderColor: appMaterialLightSecondaryHeaderColor,
  hintColor: appMaterialLightHintColor,
  disabledColor: appMaterialLightDisabledColor,
  toggleableActiveColor: appMaterialLightToggleableActiveColor,

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
  floatingActionButtonTheme: appMaterialLightFloatingActionButtonThemeData,
  elevatedButtonTheme: appMaterialLightElevatedButtonThemeData,
  buttonTheme: materialLightButtonThemeData,
  cardTheme: appMaterialLightCardTheme,
)..addThemeDataColorFields(
    AppThemeColorFields(
      appPrimaryOne: Color(primaryLightOne),
      appOnPrimaryOne: Color(onPrimaryLightOne),
      appPrimaryTwo: Color(primaryLightTwo),
      appOnPrimaryTwo: Color(onPrimaryLightTwo),
      appPrimaryThree: Color(primaryLightThree),
      appOnPrimaryThree: Color(onPrimaryLightThree),
      appPrimaryContainerOne: Color(primaryContainerLightOne),
      appOnPrimaryContainerOne: Color(onPrimaryContainerLightOne),
      appPrimaryContainerTwo: Color(primaryContainerLightTwo),
      appOnPrimaryContainerTwo: Color(onPrimaryContainerLightTwo),
      appPrimaryContainerThree: Color(primaryContainerLightThree),
      appOnPrimaryContainerThree: Color(onPrimaryContainerLightThree),
    ),
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

    //brightness: Brightness.dark,
    colorScheme: appMaterialDarkColorScheme,

    // this is auto-set by target platform
    //pageTransitionsTheme:
    // this is auto-set
    //platform:
    scrollbarTheme: appMaterialDarkScrollbarThemeData,
    highlightColor: appMaterialDarkHighLightColor,
    splashColor: appMaterialDarkSplashColor,
    primaryColor: appMaterialDarkPrimaryColor,
    canvasColor: appMaterialDarkCanvasColor,
    scaffoldBackgroundColor: appMaterialDarkScaffoldBackgroundColor,
    bottomAppBarColor: appMaterialDarkBottomAppBarColor,
    cardColor: appMaterialDarkCardColor,
    dividerColor: appMaterialDarkDividerColor,
    backgroundColor: appMaterialDarkBackgroundColor,
    dialogBackgroundColor: appMaterialDarkDialogBackgroundColor,
    indicatorColor: appMaterialDarkIndicatorColor,
    errorColor: appMaterialDarkErrorColor,
    focusColor: appMaterialDarkFocusColor,
    hoverColor: appMaterialDarkHoverColor,
    shadowColor: appMaterialDarkShadowColor,
    selectedRowColor: appMaterialDarkSelectedRowColor,
    unselectedWidgetColor: appMaterialDarkUnselectedWidgetColor,
    secondaryHeaderColor: appMaterialDarkSecondaryHeaderColor,
    hintColor: appMaterialDarkHintColor,
    disabledColor: appMaterialDarkDisabledColor,
    toggleableActiveColor: appMaterialDarkToggleableActiveColor,
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
    floatingActionButtonTheme: appMaterialDarkFloatingActionButtonThemeData,
    elevatedButtonTheme: appMaterialDarkElevatedButtonThemeData,
    buttonTheme: materialDarkButtonThemeData,
    cardTheme: appMaterialDarkCardTheme,
    )
  ..addThemeDataColorFields(
    AppThemeColorFields(
      appPrimaryOne: Color(primaryDarkOne),
      appOnPrimaryOne: Color(onPrimaryDarkOne),
      appPrimaryTwo: Color(primaryDarkTwo),
      appOnPrimaryTwo: Color(onPrimaryDarkTwo),
      appPrimaryThree: Color(primaryDarkThree),
      appOnPrimaryThree: Color(onPrimaryDarkThree),
      appPrimaryContainerOne: Color(primaryContainerDarkOne),
      appOnPrimaryContainerOne: Color(onPrimaryContainerDarkOne),
      appPrimaryContainerTwo: Color(primaryContainerDarkTwo),
      appOnPrimaryContainerTwo: Color(onPrimaryContainerDarkTwo),
      appPrimaryContainerThree: Color(primaryContainerDarkThree),
      appOnPrimaryContainerThree: Color(onPrimaryContainerDarkThree),
    ),
  );

// we do not need to do extra themes here just supply the correct
// material one based on brightness of device
MaterialBasedCupertinoThemeData materialBasedCupertinoThemeData =
    MaterialBasedCupertinoThemeData(
  materialTheme: appBrightness == Brightness.light
      ? appMaterialLightThemeData
      : appMaterialDarkThemeData,
)
      ..addThemeDataColorFields(
        AppCupertinoColorFields(
          appPrimary: appCupertinoColorScheme.primary,
          appOnPrimary: appCupertinoColorScheme.onPrimary,
          appPrimaryContainer: appCupertinoColorScheme.primaryContainer,
          appOnPrimaryContainer: appCupertinoColorScheme.onPrimaryContainer,
          appSecondary: appCupertinoColorScheme.secondary,
          appOnSecondary: appCupertinoColorScheme.onSecondary,
          appSecondaryContainer: appCupertinoColorScheme.secondaryContainer,
          appOnSecondaryContainer: appCupertinoColorScheme.onSecondaryContainer,
          appTertiary: appCupertinoColorScheme.tertiary,
          appOnTertiary: appCupertinoColorScheme.onTertiary,
          appTertiaryContainer: appCupertinoColorScheme.tertiaryContainer,
          appOnTertiaryContainer: appCupertinoColorScheme.onTertiaryContainer,
          appError: appCupertinoColorScheme.error,
          appOnError: appCupertinoColorScheme.onError,
          appErrorContainer: appCupertinoColorScheme.errorContainer,
          appOnErrorContainer: appCupertinoColorScheme.onErrorContainer,
          appBackground: appCupertinoColorScheme.background,
          appOnBackground: appCupertinoColorScheme.onBackground,
          appSurface: appCupertinoColorScheme.surface,
          appOnSurface: appCupertinoColorScheme.onSurface,
          appSurfaceVariant: appCupertinoColorScheme.surfaceVariant,
          appOnSurfaceVariant: appCupertinoColorScheme.onSurfaceVariant,
          appOutline: appCupertinoColorScheme.outline,
          appShadow: appCupertinoColorScheme.shadow,
          appInverseSurface: appCupertinoColorScheme.inverseSurface,
          appOnInverseSurface: appCupertinoColorScheme.onInverseSurface,
          appInversePrimary: appCupertinoColorScheme.inversePrimary,
          appPrimaryOne: primaryCupertinoOne,
          appOnPrimaryOne: onPrimaryCupertinoOne,
          appPrimaryContainerOne: primaryContainerCupertinoOne,
          appOnPrimaryContainerOne: onPrimaryContainerCupertinoOne,
          appPrimaryTwo: primaryCupertinoTwo,
          appOnPrimaryTwo: onPrimaryCupertinoTwo,
          appPrimaryContainerTwo: primaryContainerCupertinoTwo,
          appOnPrimaryContainerTwo: onPrimaryContainerCupertinoTwo,
          appPrimaryThree: primaryCupertinoThree,
          appOnPrimaryThree: onPrimaryCupertinoThree,
          appPrimaryContainerThree: primaryContainerCupertinoThree,
          appOnPrimaryContainerThree: onPrimaryContainerCupertinoThree,
        ),
      )
      ..addThemeDataTextFields(
        AppCupertinoTextFields(
          appDisplayLarge: appCupertinoTextTheme.displayLarge,
          appDisplayMedium: appCupertinoTextTheme.displayMedium,
          appDisplaySmall: appCupertinoTextTheme.displaySmall,
          appHeadlineLarge: appCupertinoTextTheme.headlineLarge,
          appHeadlineMedium: appCupertinoTextTheme.headlineMedium,
          appHeadlineSmall: appCupertinoTextTheme.headlineSmall,
          appTitleLarge: appCupertinoTextTheme.titleLarge,
          appTitleMedium: appCupertinoTextTheme.titleMedium,
          appTitleSmall: appCupertinoTextTheme.titleSmall,
          appBodyLarge: appCupertinoTextTheme.bodyLarge,
          appBodyMedium: appCupertinoTextTheme.bodyMedium,
          appBodySmall: appCupertinoTextTheme.bodySmall,
          appLabelLarge: appCupertinoTextTheme.labelLarge,
          appLabelMedium: appCupertinoTextTheme.labelMedium,
          appLabelSmall: appCupertinoTextTheme.labelSmall,
        ),
      );
