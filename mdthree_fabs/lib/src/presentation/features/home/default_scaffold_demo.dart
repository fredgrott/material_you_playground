// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:mdthree_fabs/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:mdthree_fabs/src/presentation/widgets/app_adaptive_scaffold.dart';


class DefaultScaffoldDemo extends StatefulWidget {
  const DefaultScaffoldDemo({Key? key}) : super(key: key);

  @override
  _DefaultScaffoldDemoState createState() => _DefaultScaffoldDemoState();
}

class _DefaultScaffoldDemoState extends State<DefaultScaffoldDemo> {
  int _destinationCount = 5;
  bool _fabInRail = false;
  bool _includeBaseDestinationsInMenu = true;

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      selectedIndex: 0,
      destinations: _allDestinations.sublist(0, _destinationCount,),
      appBar: AdaptiveAppBar(
        title: PlatformText(
          'Default Demo'),
        
        ),
      body: _body(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      fabInRail: _fabInRail,
      includeBaseDestinationsInMenu: _includeBaseDestinationsInMenu,
    );
  }

  Widget _body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('''
          This is the default behavior of the AdaptiveNavigationScaffold.
          It switches between bottom navigation, navigation rail, and a permanent drawer.
          Resize the window to switch between the navigation types.
          '''),
          const SizedBox(height: 40),
          Slider(
            min: 2,
            max: _allDestinations.length.toDouble(),
            divisions: _allDestinations.length - 2,
            value: _destinationCount.toDouble(),
            label: _destinationCount.toString(),
            onChanged: (value) {
              setState(() {
                _destinationCount = value.round();
              });
            },
          ),
          const Text('Destination Count'),
          const SizedBox(height: 40),
          Switch(
            value: _fabInRail,
            onChanged: (value) {
              setState(() {
                _fabInRail = value;
              });
            },
          ),
          const Text('fabInRail'),
          const SizedBox(height: 40),
          Switch(
            value: _includeBaseDestinationsInMenu,
            onChanged: (value) {
              setState(() {
                _includeBaseDestinationsInMenu = value;
              });
            },
          ),
          const Text('includeBaseDestinationsInMenu'),
          const SizedBox(height: 40),
          ElevatedButton(
            child: const Text('BACK'),
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
        ],
      ),
    );
  }
}

const _allDestinations = [
  AdaptiveScaffoldDestination(title: 'ALARM', icon: Icons.alarm,),
  AdaptiveScaffoldDestination(title: 'BOOK', icon: Icons.book,),
  AdaptiveScaffoldDestination(title: 'CAKE', icon: Icons.cake,),
  AdaptiveScaffoldDestination(title: 'DIRECTIONS', icon: Icons.directions,),
  AdaptiveScaffoldDestination(title: 'EMAIL', icon: Icons.email,),
  AdaptiveScaffoldDestination(title: 'FAVORITE', icon: Icons.favorite,),
  AdaptiveScaffoldDestination(title: 'GROUP', icon: Icons.group,),
  AdaptiveScaffoldDestination(title: 'HEADSET', icon: Icons.headset,),
  AdaptiveScaffoldDestination(title: 'INFO', icon: Icons.info,),
];
