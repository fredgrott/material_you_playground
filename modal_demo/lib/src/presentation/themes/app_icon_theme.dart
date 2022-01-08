// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:modal_demo/src/presentation/themes/app_theme_colors.dart';








// Gist: need to set adaptive sizes at the individual UI component as I need a context:
//       size: getWindowType(context) == AdaptiveWindowType.lrge ? 34.0 : 24.0
//
//       And, my Brand Semantic Color harmonize with primary settings are done at the 
//       UI component level in the screen.

IconThemeData appMaterialLightIconThemeData = IconThemeData(
  color: appMaterialLightColorScheme.primary,
  size: 32,
);

IconThemeData appMaterialDarkIconThemeData = IconThemeData(
  color: appMaterialDarkColorScheme.primary,
  size: 32,
);


IconThemeData appMaterialLightPrimaryIconTheme = IconThemeData(
  color: appMaterialLightColorScheme.primary,
  size: 32,
);

IconThemeData appMaterialDarkPrimaryIconTheme = IconThemeData(
  color: appMaterialDarkColorScheme.primary,
  size: 32,
);

