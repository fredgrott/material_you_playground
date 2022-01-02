// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:fp_modal/src/presentation/features/home/discovery.dart';
import 'package:fp_modal/src/presentation/themes/app_themedata_ext.dart';
import 'package:fp_modal/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:fp_modal/src/presentation/widgets/app_adaptive_scaffold.dart';

class DefaultScaffoldDemo extends StatefulWidget {
  const DefaultScaffoldDemo({Key? key}) : super(key: key);

  @override
  _DefaultScaffoldDemoState createState() => _DefaultScaffoldDemoState();
}

class _DefaultScaffoldDemoState extends State<DefaultScaffoldDemo> {
  bool showDiscovery = false;
  int count = 0;
  final int _destinationCount = 5;
  final bool _fabInRail = false;
  final bool _includeBaseDestinationsInMenu = true;
  

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      selectedIndex: 0,
      destinations: _allDestinations.sublist(
        0,
        _destinationCount,
      ),
      appBar: AdaptiveAppBar(
        title: PlatformText('Default Demo'),
      ),
      body: _body(),
      floatingActionButton: Discovery(
        visible: showDiscovery,
        description: Text(
          'Click to increment the counter', 
          style: platformThemeData(
            context, 
            material: (data) => data.textTheme.labelLarge, 
            cupertino: (data) => data.ownText()?.appLabelLarge,
            ),
          ),
        onClose: () => setState(() => showDiscovery = false),
        child: FloatingActionButton(
          onPressed: _increment,
          child: const Icon(Icons.add),
        ),
      ) as FloatingActionButton,
      fabInRail: _fabInRail,
      includeBaseDestinationsInMenu: _includeBaseDestinationsInMenu,
    );
  }
  void _increment() {
    setState(() {
      showDiscovery = false;
      count++;
    });
  }

  Widget _body() {
    return Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Text(
            'You have clicked the button this many times:',
            style: platformThemeData(
              context, 
              material: (data) => data.textTheme.bodySmall, 
              cupertino: (data) => data.ownText()?.appBodySmall,
            ),
            ),
          Text(
            '$count', 
             style: platformThemeData(
               context, 
               material: (data) => data.textTheme.labelLarge, 
               cupertino: (data) => data.ownText()?.appLabelLarge,
               ),
              ),
          ElevatedButton(
            onPressed: () => setState(() => showDiscovery = true),
            child: PlatformText(
              'SHOW DISCOVERY',
              style: platformThemeData(
                context, 
                material: (data) => data.textTheme.labelLarge, 
                cupertino: (data) => data.ownText()?.appLabelLarge,
                ) ,
              ),
          ),
        ],
      ),
    );
  }
}

const _allDestinations = [
  AdaptiveScaffoldDestination(
    title: 'ALARM',
    icon: Icons.alarm,
  ),
  AdaptiveScaffoldDestination(
    title: 'BOOK',
    icon: Icons.book,
  ),
  AdaptiveScaffoldDestination(
    title: 'CAKE',
    icon: Icons.cake,
  ),
  AdaptiveScaffoldDestination(
    title: 'DIRECTIONS',
    icon: Icons.directions,
  ),
  AdaptiveScaffoldDestination(
    title: 'EMAIL',
    icon: Icons.email,
  ),
  AdaptiveScaffoldDestination(
    title: 'FAVORITE',
    icon: Icons.favorite,
  ),
  AdaptiveScaffoldDestination(
    title: 'GROUP',
    icon: Icons.group,
  ),
  AdaptiveScaffoldDestination(
    title: 'HEADSET',
    icon: Icons.headset,
  ),
  AdaptiveScaffoldDestination(
    title: 'INFO',
    icon: Icons.info,
  ),
];
