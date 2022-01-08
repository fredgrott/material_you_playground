// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:feature_discovery/src/presentation/features/home/all_destinations.dart';
import 'package:feature_discovery/src/presentation/features/home/discovery.dart';
import 'package:feature_discovery/src/presentation/themes/app_themedata_ext.dart';
import 'package:feature_discovery/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:feature_discovery/src/presentation/widgets/app_adaptive_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

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
      destinations: allDestinations.sublist(
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
      ),
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
          Text('You have clicked the button this many times:', style: platformThemeData(
                context,
                material: (data) => data.textTheme.bodyMedium,
                cupertino: (data) => data.ownText()?.appBodyMedium,
              ),),
          Text('$count', style: platformThemeData(
            context, 
            material: (data) => data.textTheme.bodyMedium, 
            cupertino: (data) => data.ownText()?.appBodyMedium,
            ),),
          ElevatedButton(
            onPressed: () => setState(() => showDiscovery = true),
            child: Text('Show discovery',
            style: platformThemeData(
                  context,
                  material: (data) => data.textTheme.labelLarge,
                  cupertino: (data) => data.ownText()?.appLabelLarge,
                ),),
          ),
        ],
      ),
    );
  }
}
