// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'package:fp_datepicker/src/presentation/features/home/datepicker_usageexample.dart';
import 'package:fp_datepicker/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:fp_datepicker/src/presentation/widgets/app_adaptive_scaffold.dart';

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
      destinations: _allDestinations.sublist(
        0,
        _destinationCount,
      ),
      appBar: AdaptiveAppBar(
        title: PlatformText('Default Demo'),
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
    return LayoutBuilder(
      builder: (
        _,
        __,
      ) {
        return LayoutBuilder(
          builder: (
            _,
            __,
          ) {
            return const DatePickerUsageExample();
          },
        );
      },
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
