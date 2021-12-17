// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.




import 'package:adaptive_nav_two/themes/app_colors.dart';
import 'package:flutter/material.dart';




ListTileThemeData appMaterialLightListTileThemeData = ListTileThemeData(
  dense: true,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconColor: Color(materialLightSystemScheme.primary),
  textColor: Color(materialLightSystemScheme.tertiary),
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: Color(materialLightSystemScheme.surfaceVariant),
  selectedTileColor: Color(materialLightSystemScheme.primaryContainer),
  selectedColor: Color(materialLightSystemScheme.secondary),
  horizontalTitleGap: 1,
  minVerticalPadding: 1,
  minLeadingWidth: 1,
  enableFeedback: true,
  style: ListTileStyle.list,
);

ListTileThemeData appMaterialHighContrastListTileThemeData = ListTileThemeData(
  dense: true,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconColor: Color(materialLightSystemScheme.primary),
  textColor: Color(materialLightSystemScheme.tertiary),
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: Color(materialLightSystemScheme.surfaceVariant),
  selectedTileColor: Color(materialLightSystemScheme.primaryContainer),
  selectedColor: Color(materialLightSystemScheme.secondary),
  horizontalTitleGap: 1,
  minVerticalPadding: 1,
  minLeadingWidth: 1,
  enableFeedback: true,
  style: ListTileStyle.list,
);

ListTileThemeData appMaterialDarkListTileThemeData = ListTileThemeData(
  dense: true,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconColor: Color(materialDarkSystemScheme.primary),
  textColor: Color(materialDarkSystemScheme.tertiary),
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: Color(materialDarkSystemScheme.surfaceVariant),
  selectedTileColor: Color(materialDarkSystemScheme.primaryContainer),
  selectedColor: Color(materialDarkSystemScheme.secondary),
  horizontalTitleGap: 1,
  minVerticalPadding: 1,
  minLeadingWidth: 1,
  enableFeedback: true,
  style: ListTileStyle.list,
);

ListTileThemeData appMaterialDarkHighContrastListTileThemeData = ListTileThemeData(
  dense: true,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconColor: Color(materialDarkSystemScheme.primary),
  textColor: Color(materialDarkSystemScheme.tertiary),
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: Color(materialDarkSystemScheme.surfaceVariant),
  selectedTileColor: Color(materialDarkSystemScheme.primaryContainer),
  selectedColor: Color(materialDarkSystemScheme.secondary),
  horizontalTitleGap: 1,
  minVerticalPadding: 1,
  minLeadingWidth: 1,
  enableFeedback: true,
  style: ListTileStyle.list,
);

ListTileThemeData appCupertinoListTileThemeData = ListTileThemeData(
  dense: true,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  iconColor: Color(cupertinoSystemScheme.primary),
  textColor: Color(cupertinoSystemScheme.tertiary),
  contentPadding: EdgeInsetsGeometry.infinity,
  tileColor: Color(cupertinoSystemScheme.surfaceVariant),
  selectedTileColor: Color(cupertinoSystemScheme.primaryContainer),
  selectedColor: Color(cupertinoSystemScheme.secondary),
  horizontalTitleGap: 1,
  minVerticalPadding: 1,
  minLeadingWidth: 1,
  enableFeedback: true,
  style: ListTileStyle.list,
);