// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:datatable_page/src/presentation/themes/app_theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

DataTableThemeData appMaterialLightDataTableThemeData = DataTableThemeData(
  dataRowColor: MaterialStateProperty.all(appMaterialLightColorScheme.secondaryContainer),
  headingRowColor: MaterialStateProperty.all(appMaterialLightColorScheme.secondary),
  dataRowHeight: 22,
  headingRowHeight: 26,
  horizontalMargin: 12,
  columnSpacing: 4,
  dividerThickness: 2,
  checkboxHorizontalMargin: 4,
  dataTextStyle: appMaterialLightDataTextStyle,
  headingTextStyle: appMaterialLightHeadingTextStyle,
);

TextStyle appMaterialLightDataTextStyle = TextStyle(
  fontSize: 11.0,
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

TextStyle appMaterialLightHeadingTextStyle = TextStyle(
  color: appMaterialLightColorScheme.inversePrimary,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

DataTableThemeData appMaterialDarkDataTableThemeData = DataTableThemeData(
  dataRowColor:
      MaterialStateProperty.all(appMaterialDarkColorScheme.secondaryContainer),
  headingRowColor:
      MaterialStateProperty.all(appMaterialDarkColorScheme.secondary),
  dataRowHeight: 22,
  headingRowHeight: 26,
  horizontalMargin: 12,
  columnSpacing: 4,
  dividerThickness: 2,
  checkboxHorizontalMargin: 4,
  dataTextStyle: appMaterialLightDataTextStyle,
  headingTextStyle: appMaterialLightHeadingTextStyle,
);

TextStyle appMaterialDarkDataTextStyle = TextStyle(
  fontSize: 11.0, 
  fontWeight: FontWeight.w400,
  letterSpacing: 1.5,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);

TextStyle appMaterialDarkHeadingTextStyle = TextStyle(
  color: appMaterialDarkColorScheme.inversePrimary,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
  letterSpacing: 1.25,
  fontFamily: GoogleFonts.notoSerif().fontFamily,
);
