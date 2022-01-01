// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:fp_contextual/src/presentation/themes/app_squircle.dart';
import 'package:fp_contextual/src/presentation/themes/app_themedata_ext.dart';

class Menu extends StatelessWidget {
  final List<Widget> children;

  const Menu({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      // Note: With Flutter Portal I cannot declare a ThemeData CardTheme, I have
      //       to define stuff by card
      child: Card(
        //color: platformThemeData(
         // context,
         // material: (data) => data.colorScheme.background,
          //cupertino: (data) => data.ownColor()?.appBackground,
        //),
        //shadowColor: platformThemeData(
          //context,
          //material: (data) => data.colorScheme.shadow,
          //cupertino: (data) => data.ownColor()?.appShadow,
        //),
        //elevation: 1,
        //clipBehavior: Clip.antiAliasWithSaveLayer,
        // Doing it MD3 with 8 but also a twist
        //shape: const SquircleBorder(
              // radius: BorderRadius.all(
              //    Radius.circular(24.0),
             //),),
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: children,
          ),
        ),
      ),
    );
  }
}
