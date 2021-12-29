// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:my_breakpoints/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:my_breakpoints/src/presentation/widgets/app_adaptive_container.dart';
import 'package:my_breakpoints/src/presentation/widgets/app_adaptive_scaffold.dart';


class DefaultScaffoldDemo extends StatefulWidget {
  const DefaultScaffoldDemo({Key? key}) : super(key: key);

  @override
  _DefaultScaffoldDemoState createState() => _DefaultScaffoldDemoState();
}

class _DefaultScaffoldDemoState extends State<DefaultScaffoldDemo> {
  final int _destinationCount = 5;
  final bool _fabInRail = false;
  final bool _includeBaseDestinationsInMenu = true;

  @override
  Widget build(BuildContext context) {
    return AdaptiveNavigationScaffold(
      selectedIndex: 0,
      destinations: _allDestinations.sublist(0, _destinationCount,),
      appBar: AdaptiveAppBar(
        title: PlatformText(
          'Default Demo',),
        
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
        children: [
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(xsmall: true),
            color: Colors.red,
            child: const Text('This is an extra small window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(small: true),
            color: Colors.orange,
            child: const Text('This is a small window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(medium: true),
            color: Colors.yellow,
            child: const Text('This is a medium window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(large: true),
            color: Colors.green,
            child: const Text('This is a large window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(xlarge: true),
            color: Colors.blue,
            child: const Text('This is an extra large window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(
              xsmall: true,
              small: true,
            ),
            color: Colors.indigo,
            child: const Text('This is a small or extra small window'),
          ),
          AdaptiveContainer(
            constraints: const AdaptiveConstraints(
              medium: true,
              large: true,
              xlarge: true,
            ),
            color: Colors.pink,
            child: const Text('This is a medium, large, or extra large window'),
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
