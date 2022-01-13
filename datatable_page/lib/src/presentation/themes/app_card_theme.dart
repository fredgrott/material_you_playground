// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:datatable_page/src/presentation/themes/app_squircle.dart';
import 'package:datatable_page/src/presentation/themes/app_theme_colors.dart';
import 'package:flutter/material.dart';







// Gist: MD3 spec at https://m3.material.io/components/cards/specs
//       Types of Cards:
//           Elevated
//           Filled
//           Outline
//

CardTheme appMaterialLightCardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: appMaterialLightColorScheme.surface,
  shadowColor: appMaterialLightColorScheme.shadow,
  elevation: 1,
  margin: const EdgeInsets.all(16),
  shape: const SquircleBorder(
               radius: BorderRadius.all(
                  Radius.circular(12),
             ),),

);

CardTheme appMaterialDarkCardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: appMaterialLightColorScheme.surface,
  shadowColor: appMaterialLightColorScheme.shadow,
  elevation: 1,
  margin: const EdgeInsets.all(16),
  shape: const SquircleBorder(
    radius: BorderRadius.all(
      Radius.circular(12.0),
    ),
  ),
);
