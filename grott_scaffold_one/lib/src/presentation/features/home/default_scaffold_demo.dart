// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:grott_scaffold_one/src/presentation/themes/app_themedata_ext.dart';
import 'package:grott_scaffold_one/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:grott_scaffold_one/src/presentation/widgets/app_adaptive_scaffold.dart';

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
      //  _onDestinationSelected(){
      //      setState((){
      //         do nav to namedRoute here
      //         it will involve selectedIndex
      //          used as index to namedRoutes
      //          list use navigatorKey to go to namedRoute
      //          without context
      // })
      // }
      //onDestinationSelected: ,
      selectedIndex: 0,
      destinations: _allDestinations.sublist(
        0,
        _destinationCount,
      ),
      appBar: AdaptiveAppBar(
        title: PlatformText('Default Demo'),
      ),
      body: _body(),
      //floatingActionButton: FloatingActionButton(
        //onPressed: _increment,
       // child: const Icon(Icons.add),
      //),
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
        // ignore: avoid_redundant_argument_values
        mainAxisSize: MainAxisSize.max,
        // ignore: avoid_redundant_argument_values
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'Press Me',
              style: platformThemeData(
                context,
                material: (data) => data.textTheme.labelLarge,
                cupertino: (data) => data.ownText()?.appLabelLarge,
              ),
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
