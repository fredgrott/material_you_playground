// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_colors.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_data_defaults.dart';


OutlinedButtonThemeData appMaterialLightOutlinedButtonThemeData =
    OutlinedButtonThemeData(
      style: appMaterialLightButtonStyle,
    );

ButtonStyle appMaterialLightButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(appMaterialLightLabelTextStyle),
  backgroundColor:
      MaterialStateProperty.resolveWith(getMaterialLightBackgroundColor),
  foregroundColor:
      MaterialStateProperty.resolveWith(getMaterialLightForegroundColor),
  overlayColor: MaterialStateProperty.resolveWith(getMaterialLightOverlay),
  shadowColor:
      ButtonStyleButton.allOrNull<Color>(appMaterialLightColorScheme.shadow),
  elevation: MaterialStateProperty.resolveWith(getMaterialLightElevation),
  minimumSize: ButtonStyleButton.allOrNull<Size>(
    const Size(
      64,
      40,
    ),
  ),
  maximumSize: ButtonStyleButton.allOrNull<Size>(Size.infinite),
  

);

OutlinedButtonThemeData appMaterialDarkOutlinedButtonThemeData =
    OutlinedButtonThemeData(
  style: appMaterialLightButtonStyle,
);

ButtonStyle appMaterialDarkButtonStyle = ButtonStyle(
  textStyle: MaterialStateProperty.all(appMaterialDarkLabelTextStyle),
  backgroundColor:
      MaterialStateProperty.resolveWith(getMaterialDarkBackgroundColor),
  foregroundColor:
      MaterialStateProperty.resolveWith(getMaterialDarkForegroundColor),
  overlayColor: MaterialStateProperty.resolveWith(getMaterialDarkOverlay),
  shadowColor:
      ButtonStyleButton.allOrNull<Color>(appMaterialDarkColorScheme.shadow),
  elevation: MaterialStateProperty.resolveWith(getMaterialDarkElevation),
  minimumSize: ButtonStyleButton.allOrNull<Size>(
    const Size(
      64,
      40,
    ),
  ),
  maximumSize: ButtonStyleButton.allOrNull<Size>(Size.infinite),
  
);

// Label Large
TextStyle appMaterialLightLabelTextStyle = TextStyle(
  color: appMaterialLightColorScheme.primaryContainer,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

TextStyle appMaterialDarkLabelTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.primaryContainer,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

Color getMaterialLightBackgroundColor(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return appMaterialLightColorScheme.onSurface;
  }

  return appMaterialLightColorScheme.surface;
}

Color getMaterialDarkBackgroundColor(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return appMaterialDarkColorScheme.onSurface;
  }

  return appMaterialDarkColorScheme.surface;
}

Color getMaterialLightForegroundColor(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return appMaterialLightColorScheme.onSurface.withOpacity(0.38);
  }

  return appMaterialLightColorScheme.primary;
}

Color getMaterialDarkForegroundColor(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return appMaterialDarkColorScheme.onSurface.withOpacity(0.38);
  }

  return appMaterialDarkColorScheme.primary;
}

Color getMaterialLightOverlay(Set<MaterialState> states) {
  if (states.contains(MaterialState.hovered)) {
    return appMaterialLightColorScheme.primary.withOpacity(hoverStateOpacity);
  }

  if (states.contains(MaterialState.focused) ||
      states.contains(MaterialState.pressed)) {
    return appMaterialLightColorScheme.primary.withOpacity(focusStateOpacity);
  }

  if (states.contains(MaterialState.dragged)) {
    return appMaterialLightColorScheme.primary.withOpacity(draggedStateOpacity);
  }

  return appMaterialLightColorScheme.surface.withOpacity(1);
}

Color getMaterialDarkOverlay(Set<MaterialState> states) {
  if (states.contains(MaterialState.hovered)) {
    return appMaterialDarkColorScheme.primary.withOpacity(hoverStateOpacity);
  }

  if (states.contains(MaterialState.focused) ||
      states.contains(MaterialState.pressed)) {
    return appMaterialDarkColorScheme.primary.withOpacity(focusStateOpacity);
  }

  if (states.contains(MaterialState.dragged)) {
    return appMaterialDarkColorScheme.primary.withOpacity(draggedStateOpacity);
  }

  // set as transparent
  return appMaterialDarkColorScheme.surface.withOpacity(1);
}

double getMaterialLightElevation(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return 0;
  }
  if (states.contains(MaterialState.hovered)) {
    return elevationTwo;
  }
  if (states.contains(MaterialState.focused)) {
    return elevationOne;
  }
  if (states.contains(MaterialState.pressed)) {
    return elevationOne;
  }

  return elevationOne;
}

double getMaterialDarkElevation(Set<MaterialState> states) {
  if (states.contains(MaterialState.disabled)) {
    return 0;
  }
  if (states.contains(MaterialState.hovered)) {
    return elevationTwo;
  }
  if (states.contains(MaterialState.focused)) {
    return elevationOne;
  }
  if (states.contains(MaterialState.pressed)) {
    return elevationOne;
  }

  return elevationOne;
}

BorderSide appMaterialLightBorderSide = BorderSide(
  color: appMaterialLightColorScheme.secondary,
  // ignore: avoid_redundant_argument_values
  width: 1.0,
  // ignore: avoid_redundant_argument_values
  style: BorderStyle.solid,
);

BorderSide appMaterialDarkBorderSide = BorderSide(
  color: appMaterialDarkColorScheme.secondary,
  // ignore: avoid_redundant_argument_values
  width: 1.0,
  // ignore: avoid_redundant_argument_values
  style: BorderStyle.solid,
);
