// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/widgets.dart';

typedef NavigationTypeResolver = NavigationType Function(BuildContext context);

// The navigation mechanism to configure the [Scaffold] with.
enum NavigationType {
  // Used to configure a [Scaffold] with a [BottomNavigationBar].
  bottom,

  // Used to configure a [Scaffold] with a [NavigationRail].
  rail,

  // Used to configure a [Scaffold] with a modal [Drawer].
  drawer,

  // Used to configure a [Scaffold] with an always open [Drawer].
  permanentDrawer,
}

/// Used to configure items or destinations in the various navigation
/// mechanism. For [BottomNavigationBar], see [BottomNavigationBarItem]. For
/// [NavigationRail], see [NavigationRailDestination]. For [Drawer], see
/// [ListTile].
class AdaptiveScaffoldDestination {
  final String title;
  final IconData icon;

  const AdaptiveScaffoldDestination({
    required this.title,
    required this.icon,
  });
}
