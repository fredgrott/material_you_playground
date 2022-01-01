// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:fp_contextual/src/presentation/features/home/menu.dart';
import 'package:fp_contextual/src/presentation/features/home/modal_entry.dart';
import 'package:fp_contextual/src/presentation/themes/app_themedata_ext.dart';

class ContextualMenuExample extends StatefulWidget {
  const ContextualMenuExample({Key? key}) : super(key: key);

  @override
  _ContextualMenuExampleState createState() => _ContextualMenuExampleState();
}

class _ContextualMenuExampleState extends State<ContextualMenuExample> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ModalEntry(
        visible: _showMenu,
        onClose: () => setState(() => _showMenu = false),
        childAnchor: Alignment.topRight,
        menuAnchor: Alignment.topLeft,
        menu: Menu(
          children: [
            PopupMenuItem<void>(
              height: 42,
              child: PlatformText('FIRST', style: platformThemeData(
                    context,
                    material: (data) => data.textTheme.labelLarge,
                    cupertino: (data) => data.ownText()?.appLabelLarge,
                  ),),
            ),
            PopupMenuItem<void>(
              height: 42,
              child: PlatformText('SECOND', style: platformThemeData(
                    context,
                    material: (data) => data.textTheme.labelLarge,
                    cupertino: (data) => data.ownText()?.appLabelLarge,
                  ),),
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () => setState(() => _showMenu = true),
          style: ElevatedButton.styleFrom(
            textStyle: platformThemeData(
              context,
              material: (data) => data.textTheme.labelLarge,
              cupertino: (data) => data.ownText()?.appLabelLarge,
            ),
            // MD3 elevated button height needs to be 40dp
            fixedSize: const Size(240, 88,),
          ),
          child: PlatformText('SHOW MENU', style: platformThemeData(
              context,
              material: (data) => data.textTheme.labelLarge,
              cupertino: (data) => data.ownText()?.appLabelLarge,
            ),),
        ),
      ),
    );
  }
}
