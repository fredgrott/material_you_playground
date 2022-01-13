// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original By Material IO team under BSD clciense

import 'dart:math' as math;

import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


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

// A widget that adapts to the current display size, displaying a [Drawer],
/// [NavigationRail], or [BottomNavigationBar]. Navigation destinations are
/// defined in the [destinations] parameter.
class AdaptiveNavigationScaffold extends StatelessWidget {
  /// My modification to support standard side sheets on the right side on desktop
  final Widget sideSheetBody;

  /// See [Scaffold.appBar].
  final PreferredSizeWidget? appBar;

  /// See [Scaffold.body].
  final Widget body;

  // Gist: Adaptive Navigation package source is wrong as this type
  //       should match scaffold source as Flutter SDK Teams underlying
  //       philosophy is that certain stuff is replaceable in the quest of
  //       a better Material Design implementation .

  /// See [Scaffold.floatingActionButton].
  final Widget? floatingActionButton;

  /// See [Scaffold.floatingActionButtonLocation].
  ///
  /// Ignored if [fabInRail] is true.
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// See [Scaffold.floatingActionButtonAnimator].
  ///
  /// Ignored if [fabInRail] is true.
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  /// See [Scaffold.persistentFooterButtons].
  final List<Widget>? persistentFooterButtons;

  /// See [Scaffold.endDrawer].
  final Widget? endDrawer;

  /// See [Scaffold.drawerScrimColor].
  final Color? drawerScrimColor;

  /// See [Scaffold.backgroundColor].
  final Color? backgroundColor;

  /// See [Scaffold.bottomSheet].
  final Widget? bottomSheet;

  /// See [Scaffold.resizeToAvoidBottomInset].
  final bool? resizeToAvoidBottomInset;

  /// See [Scaffold.primary].
  final bool primary;

  /// See [Scaffold.drawerDragStartBehavior].
  final DragStartBehavior drawerDragStartBehavior;

  /// See [Scaffold.extendBody].
  final bool extendBody;

  /// See [Scaffold.extendBodyBehindAppBar].
  final bool extendBodyBehindAppBar;

  /// See [Scaffold.drawerEdgeDragWidth].
  final double? drawerEdgeDragWidth;

  /// See [Scaffold.drawerEnableOpenDragGesture].
  final bool drawerEnableOpenDragGesture;

  /// See [Scaffold.endDrawerEnableOpenDragGesture].
  final bool endDrawerEnableOpenDragGesture;

  /// The index into [destinations] for the current selected
  /// [AdaptiveScaffoldDestination].
  final int selectedIndex;

  /// Defines the appearance of the items that are arrayed within the
  /// navigation.
  ///
  /// The value must be a list of two or more [AdaptiveScaffoldDestination]
  /// values.
  final List<AdaptiveScaffoldDestination> destinations;

  /// Called when one of the [destinations] is selected.
  ///
  /// The stateful widget that creates the adaptive scaffold needs to keep
  /// track of the index of the selected [AdaptiveScaffoldDestination] and call
  /// `setState` to rebuild the adaptive scaffold with the new [selectedIndex].
  final ValueChanged<int>? onDestinationSelected;

  /// Determines the navigation type that the scaffold uses.
  final NavigationTypeResolver? navigationTypeResolver;

  /// The leading item in the drawer when the navigation has a drawer.
  ///
  /// If null, then there is no header.
  final Widget? drawerHeader;

  /// Whether the [floatingActionButton] is inside or the rail or in the regular
  /// spot.
  ///
  /// If true, then [floatingActionButtonLocation] and
  /// [floatingActionButtonAnimation] are ignored.
  final bool fabInRail;

  /// Weather the overflow menu defaults to include overflow destinations and
  /// the overflow destinations.
  final bool includeBaseDestinationsInMenu;

  const AdaptiveNavigationScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.endDrawer,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    required this.selectedIndex,
    required this.destinations,
    this.onDestinationSelected,
    this.navigationTypeResolver,
    this.drawerHeader,
    this.fabInRail = true,
    this.includeBaseDestinationsInMenu = true,
    required this.sideSheetBody,
  }) : super(key: key);

  // ignore: member-ordering-extended
  @override
  Widget build(BuildContext context) {
    final NavigationTypeResolver navigationTypeResolver =
        this.navigationTypeResolver ?? _defaultNavigationTypeResolver;
    final navigationType = navigationTypeResolver(context);
    switch (navigationType) {
      case NavigationType.bottom:
        return _buildBottomNavigationScaffold();
      case NavigationType.rail:
        return _buildNavigationRailScaffold();
      case NavigationType.drawer:
        return _buildNavigationDrawerScaffold();
      case NavigationType.permanentDrawer:
        return _buildPermanentDrawerScaffold();
    }
  }

  NavigationType _defaultNavigationTypeResolver(BuildContext context) {
    if (_isLargeScreen(context)) {
      return NavigationType.permanentDrawer;
    } else if (_isMediumScreen(context)) {
      return NavigationType.rail;
    } else {
      return NavigationType.bottom;
    }
  }

  Drawer _defaultDrawer(List<AdaptiveScaffoldDestination> destinations) {
    return Drawer(
      child: ListView(
        children: [
          // TODO: Find a better way to write `drawerHeader!`
          if (drawerHeader != null) drawerHeader!,
          for (int i = 0; i < destinations.length; i++)
            ListTile(
              leading: Icon(destinations[i].icon),
              title: PlatformText(destinations[i].title),
              onTap: () {
                onDestinationSelected?.call(i);
              },
            ),
        ],
      ),
    );
  }

  // modal side sheet here
  // ignore: long-method
  Widget _buildBottomNavigationScaffold() {
    const int bottomNavigationOverflow = 5;
    final bottomDestinations = destinations.sublist(
      0,
      math.min(
        destinations.length,
        bottomNavigationOverflow,
      ),
    );
    final List<AdaptiveScaffoldDestination> drawerDestinations;
    if (destinations.length > bottomNavigationOverflow) {
      drawerDestinations = destinations.sublist(
        includeBaseDestinationsInMenu ? 0 : bottomNavigationOverflow,
      );
    } else {
      drawerDestinations = <AdaptiveScaffoldDestination>[];
    }

    return Scaffold(
        key: key,
        body: body,
        appBar: appBar,
        drawer: drawerDestinations.isEmpty
            ? null
            : _defaultDrawer(drawerDestinations),
        bottomNavigationBar: NavigationBar(
          destinations: [
            for (final destination in bottomDestinations)
              NavigationDestination(
                icon: Icon(destination.icon),
                label: destination.title,
                tooltip: destination.title,
              ),
          ],
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index) {},
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        ),
        floatingActionButton: floatingActionButton,
        endDrawer: Drawer(
        child: Column(
          children: [
            drawerHeader as Widget,
            sideSheetBody,
          ],
        ),
      ),
    
    );
  }

  // modal side sheet here
  // ignore: long-method
  Widget _buildNavigationRailScaffold() {
    const int railDestinationsOverflow = 7;
    final railDestinations = destinations.sublist(
      0,
      math.min(
        destinations.length,
        railDestinationsOverflow,
      ),
    );
    final List<AdaptiveScaffoldDestination> drawerDestinations;
    if (destinations.length > railDestinationsOverflow) {
      drawerDestinations = destinations.sublist(
        includeBaseDestinationsInMenu ? 0 : railDestinationsOverflow,
      );
    } else {
      drawerDestinations = <AdaptiveScaffoldDestination>[];
    }

    return Scaffold(
        key: key,
        appBar: appBar,
        drawer: drawerDestinations.isEmpty
            ? null
            : _defaultDrawer(drawerDestinations),
        body: Row(
          children: [
            NavigationRail(
              leading: fabInRail ? floatingActionButton : null,
              destinations: [
                for (final destination in railDestinations)
                  NavigationRailDestination(
                    icon: Icon(destination.icon),
                    label: PlatformText(destination.title),
                  ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: onDestinationSelected ?? (_) {},
            ),
            const VerticalDivider(
              width: 1,
              thickness: 1,
            ),
            Expanded(
              child: body,
            ),
          ],
        ),
        floatingActionButton: fabInRail ? null : floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButtonAnimator: floatingActionButtonAnimator,
        persistentFooterButtons: persistentFooterButtons,
        endDrawer: Drawer(
        child: Column(
          children: [
            drawerHeader as Widget,
            sideSheetBody,
          ],
        ),
      ),
        bottomSheet: bottomSheet,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        // ignore: avoid_redundant_argument_values
        primary: true,
        drawerDragStartBehavior: drawerDragStartBehavior,
        extendBody: extendBody,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        drawerScrimColor: drawerScrimColor,
        drawerEdgeDragWidth: drawerEdgeDragWidth,
        drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
        
    
    );
  }

  Widget _buildNavigationDrawerScaffold() {
    return Scaffold(
      key: key,
      body: body,
      appBar: appBar,
      // Per MD3 spec drawers get corners rounded,  my guess is by 8 dsp?
      drawer: Drawer(
        child: Column(
          children: [
            // TODO: Find a better way to write `drawerHeader!`
            if (drawerHeader != null) drawerHeader!,
            for (final destination in destinations)
              // for some reason I need to set theme stuff here
              // for the drawer
              ListTile(
                leading: Icon(destination.icon),
                title: PlatformText(
                  destination.title,
                ),
                selected: destinations.indexOf(destination) == selectedIndex,
                onTap: () => _destinationTapped(destination),
                style: ListTileStyle.drawer,
              ),
          ],
        ),
      ),

      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons,
      endDrawer: endDrawer,
      bottomSheet: bottomSheet,
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: true,
      drawerDragStartBehavior: drawerDragStartBehavior,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      drawerScrimColor: drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
    );
  }

  // standard side sheet goes here as last item of the row
  // ignore: long-method
  Widget _buildPermanentDrawerScaffold() {
    return Row(
      children: [
        Drawer(
          child: Column(
            children: [
              // TODO: Find a better way to write `drawerHeader!`
              if (drawerHeader != null) drawerHeader!,
              for (final destination in destinations)
                ListTile(
                  leading: Icon(destination.icon),
                  title: PlatformText(destination.title),
                  selected: destinations.indexOf(destination) == selectedIndex,
                  onTap: () => _destinationTapped(destination),
                ),
            ],
          ),
        ),

        const VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          child: Scaffold(
            key: key,
            appBar: appBar,
            body: body,
            floatingActionButton: floatingActionButton,
            floatingActionButtonLocation: floatingActionButtonLocation,
            floatingActionButtonAnimator: floatingActionButtonAnimator,
            persistentFooterButtons: persistentFooterButtons,
            endDrawer: endDrawer,
            bottomSheet: bottomSheet,
            backgroundColor: backgroundColor,
            resizeToAvoidBottomInset: resizeToAvoidBottomInset,
            // ignore: avoid_redundant_argument_values
            primary: true,
            drawerDragStartBehavior: drawerDragStartBehavior,
            extendBody: extendBody,
            extendBodyBehindAppBar: extendBodyBehindAppBar,
            drawerScrimColor: drawerScrimColor,
            drawerEdgeDragWidth: drawerEdgeDragWidth,
            drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
            endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
          ),
        ),
        // standard side sheet, borrowed layout idead from modal side sheets package
        //  https://github.com/lalitjarwal/modal_side_sheet/blob/master/lib/src/body_with_side_sheet.dart
        //
        // This is the left border of standard side sheet
        const VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Drawer(
          child: Column(
            children: [
              // TODO: Find a better way to write `drawerHeader!`
              if (drawerHeader != null) drawerHeader!,
              sideSheetBody,
            ],
          ),
        ),
      ],
    );
  }

  void _destinationTapped(AdaptiveScaffoldDestination destination) {
    final index = destinations.indexOf(destination);
    if (index != selectedIndex) {
      onDestinationSelected?.call(index);
    } else {}
  }
}

bool _isLargeScreen(BuildContext context) =>
    getWindowType(context) >= AdaptiveWindowType.large;
bool _isMediumScreen(BuildContext context) =>
    getWindowType(context) == AdaptiveWindowType.medium;
