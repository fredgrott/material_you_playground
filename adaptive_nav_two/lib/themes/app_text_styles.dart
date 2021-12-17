// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ui';




import 'package:adaptive_nav_two/themes/app_colors.dart';
import 'package:adaptive_nav_two/themes/app_text_shadows.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

// Gist: Wakamaifondue.com says Noto Fonts at minimum have a kern font feature for glypsh

TextStyle appTextStyleBodyLargeMaterialLight = TextStyle(
  debugLabel: "Body Large Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.5,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleBodyMediumMaterialLight = TextStyle(
  debugLabel: "Body Medium Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  height: 1.43,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleBodySmallMaterialLight = TextStyle(
  debugLabel: "Body Small Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  height: 1.33,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleDisplayLargeMaterialLight = TextStyle(
  debugLabel: "Display Large Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 57,
  fontWeight: FontWeight.w700,
  height: 1.12,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowMaterialLight,],
);

TextStyle appTextStyleDisplayMediumMaterialLight = TextStyle(
  debugLabel: "Display Medium Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 45,
  fontWeight: FontWeight.w600,
  textBaseline: TextBaseline.alphabetic,
  height: 1.16,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [
    brandTwoDisplayShadowMaterialLight,
  ],
);

TextStyle appTextStyleDisplaySmallMaterialLight = TextStyle(
  debugLabel: "Display Small Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 36,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.22,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [
    brandTwoDisplayShadowMaterialLight,
  ],
);

TextStyle appTextStyleHeadlineLargeMaterialLight = TextStyle(
  debugLabel: "Headline Large Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 32,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.25,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowMaterialLight],
);

TextStyle appTextStyleHeadlineMediumMaterialLight = TextStyle(
  debugLabel: "Headline Medium Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 28,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.29,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowMaterialLight],
);

TextStyle appTextStyleHeadlineSmallMaterialLight = TextStyle(
  debugLabel: "Headline Small Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 24,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowMaterialLight],
);

TextStyle appTextStyleLabelLargeMaterialLight = TextStyle(
  debugLabel: "Label Large Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleLabelMediumMaterialLight = TextStyle(
  debugLabel: "Label Medium Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleLabelSmallMaterialLight = TextStyle(
  debugLabel: "Label Small Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 11,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 0.55,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleTitleLargeMaterialLight = TextStyle(
  debugLabel: "Title Large Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 22,
  fontWeight: FontWeight.w700,
  textBaseline: TextBaseline.alphabetic,
  height: 1.27,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowMaterialLight,
  ],
);

TextStyle appTextStyleTitleMediumMaterialLight = TextStyle(
  debugLabel: "Title Medium Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 16,
  fontWeight: FontWeight.w600,
  textBaseline: TextBaseline.alphabetic,
  height: 1.5,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowMaterialLight,
  ],
);

TextStyle appTextStyleTitleSmallMaterialLight = TextStyle(
  debugLabel: "Title Small Material Light",
  color: Color(materialLightSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowMaterialLight,
  ],
);

TextStyle appTextStyleBodyLargeMaterialDark = TextStyle(
  debugLabel: "Body Large Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.5,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleBodyMediumMaterialDark = TextStyle(
  debugLabel: "Body Medium Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleBodySmallMaterialDark = TextStyle(
  debugLabel: "Body Small Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleDisplayLargeMaterialDark = TextStyle(
  debugLabel: "Display Large Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 57,
  fontWeight: FontWeight.w700,
  height: 1.12,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowMaterialDark],
);

TextStyle appTextStyleDisplayMediumMaterialDark = TextStyle(
  debugLabel: "Display Medium Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 45,
  fontWeight: FontWeight.w600,
  textBaseline: TextBaseline.alphabetic,
  height: 1.16,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowMaterialDark],
);

TextStyle appTextStyleDisplaySmallMaterialDark = TextStyle(
  debugLabel: "Display Small Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 36,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.22,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowMaterialDark],
);

TextStyle appTextStyleHeadlineLargeMaterialDark = TextStyle(
  debugLabel: "Headline Large Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 32,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.25,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowMaterialDark],
);

TextStyle appTextStyleHeadlineMediumMaterialDark = TextStyle(
  debugLabel: "Headline Medium Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 28,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.29,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowMaterialDark],
);

TextStyle appTextStyleHeadlineSmallMaterialDark = TextStyle(
  debugLabel: "Headline Small Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 24,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowMaterialDark],
);

TextStyle appTextStyleLabelLargeMaterialDark = TextStyle(
  debugLabel: "Label Large Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleLabelMediumMaterialDark = TextStyle(
  debugLabel: "Label Medium Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleLabelSmallMaterialDark = TextStyle(
  debugLabel: "Label Small Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 11,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 0.55,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleTitleLargeMaterialDark = TextStyle(
  debugLabel: "Title Large Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 22,
  fontWeight: FontWeight.w700,
  textBaseline: TextBaseline.alphabetic,
  height: 1.27,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowMaterialDark,
  ],
);

TextStyle appTextStyleTitleMediumMaterialDark = TextStyle(
  debugLabel: "Title Meidum Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 16,
  fontWeight: FontWeight.w600,
  textBaseline: TextBaseline.alphabetic,
  height: 1.5,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowMaterialDark,
  ],
);

TextStyle appTextStyleTitleSmallMaterialDark = TextStyle(
  debugLabel: "Title Small Material Dark",
  color: Color(materialDarkSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowMaterialDark,
  ],
);

TextStyle appTextStyleBodyLargeCupertino = TextStyle(
  debugLabel: "Body Large Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  height: 1.5,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleBodyMediumCupertino = TextStyle(
  debugLabel: "Body Medium Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  height: 1.43,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleBodySmallCupertino = TextStyle(
  debugLabel: "Body Small Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  height: 1.33,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleDisplayLargeCupertino = TextStyle(
  debugLabel: "Display Large Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 57,
  fontWeight: FontWeight.w700,
  height: 1.12,
  textBaseline: TextBaseline.alphabetic,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowCupertino],
);

TextStyle appTextStyleDisplayMediumCupertino = TextStyle(
  debugLabel: "Display Medium Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 45,
  fontWeight: FontWeight.w600,
  textBaseline: TextBaseline.alphabetic,
  height: 1.16,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowCupertino],
);

TextStyle appTextStyleDisplaySmallCupertino = TextStyle(
  debugLabel: "Display Small Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 36,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.22,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandTwoDisplayShadowCupertino],
);

TextStyle appTextStyleHeadlineLargeCupertino = TextStyle(
  debugLabel: "Headline Large Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 32,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.25,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowCupertino],
);

TextStyle appTextStyleHeadlineMediumCupertino = TextStyle(
  debugLabel: "Headline Medium Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 28,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.29,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowCupertino],
);

TextStyle appTextStyleHeadlineSmallCupertino = TextStyle(
  debugLabel: "Headline Small Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 24,
  fontWeight: FontWeight.w400,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: [brandThreeHeadlineShadowCupertino],
);

TextStyle appTextStyleLabelLargeCupertino = TextStyle(
  debugLabel: "Label Large Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleLabelMediumCupertino = TextStyle(
  debugLabel: "Label Medium Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.33,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleLabelSmallCupertino = TextStyle(
  debugLabel: "Label Small Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSans().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 11,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 0.55,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
);

TextStyle appTextStyleTitleLargeCupertino = TextStyle(
  debugLabel: "Title Large Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 22,
  fontWeight: FontWeight.w700,
  textBaseline: TextBaseline.alphabetic,
  height: 1.27,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowCupertino,
  ],
);

TextStyle appTextStyleTitleMediumCupertino = TextStyle(
  debugLabel: "Title Meidum Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 16,
  fontWeight: FontWeight.w600,
  textBaseline: TextBaseline.alphabetic,
  height: 1.5,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowCupertino,
  ],
);

TextStyle appTextStyleTitleSmallCupertino = TextStyle(
  debugLabel: "Title Small Cupertino",
  color: Color(cupertinoSystemScheme.tertiary),
  fontFamily: GoogleFonts.notoSerif().fontFamily,
  fontStyle: FontStyle.normal,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  textBaseline: TextBaseline.alphabetic,
  height: 1.43,
  fontFeatures: const <FontFeature>[FontFeature.enable('kern')],
  shadows: <Shadow>[
    brandOneTitleShadowCupertino,
  ],
);
