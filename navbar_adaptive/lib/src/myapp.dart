// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:navbar_adaptive/src/infrastrucutre/app_vars.dart';
import 'package:navbar_adaptive/src/presentation/themes/app_themedata.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      // Under Flutter Platform Widgets crossplatform package(FPW)
      // one does not use HighContrast and DarkHighContrast themes as 
      // just a repeat of the non-highcontrast themes as the only 
      // things that change for high contrast is using blackest 
      // dark color for text on light high contrast and the whitest
      // white color for text on dark high contrast.
      data: appBrightness == Brightness.light
          ? appMaterialLightThemeData
          : appMaterialDarkThemeData,
 
      child: Container(),
      );
  }
  
}