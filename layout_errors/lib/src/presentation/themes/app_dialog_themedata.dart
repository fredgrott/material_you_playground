// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:layout_errors/src/presentation/themes/app_theme_colors.dart';
import 'package:layout_errors/src/presentation/themes/app_theme_data_defaults.dart';



// Gist: MD3 0dp corners

DialogTheme appMaterialLightDialogTheme = DialogTheme(
  backgroundColor: appMaterialLightColorScheme.surfaceVariant,
  elevation: elevationTwo,
  alignment: Alignment.centerLeft,
  
  titleTextStyle: appMaterialLightDialogTitleTextStyle,
  contentTextStyle: appMaterialLightDialogContentTextStyle,
);

DialogTheme appMaterialDarkDialogTheme = DialogTheme(
  backgroundColor: appMaterialDarkColorScheme.surfaceVariant,
  elevation: elevationTwo,
  alignment: Alignment.centerLeft,
  
  titleTextStyle: appMaterialDarkDialogTitleTextStyle,
  contentTextStyle: appMaterialDarkDialogContentTextStyle,
);

// Label Large
TextStyle appMaterialLightDialogTitleTextStyle = TextStyle(
  color: appMaterialLightColorScheme.tertiaryContainer,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

TextStyle appMaterialDarkDialogTitleTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.tertiaryContainer,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

// lable medium
TextStyle appMaterialLightDialogContentTextStyle = TextStyle(
  color: appMaterialLightColorScheme.tertiary,
  fontSize: 11.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

TextStyle appMaterialDarkDialogContentTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.tertiary,
  fontSize: 11.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);
