// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:collection_widgets/src/data/sample_item.dart';
import 'package:collection_widgets/src/presentation/features/home/all_destinations.dart';
import 'package:collection_widgets/src/presentation/themes/app_themedata_ext.dart';
import 'package:collection_widgets/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:collection_widgets/src/presentation/widgets/app_adaptive_scaffold.dart';
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
  final List<SampleItem> items = [
    const SampleItem(1),
    const SampleItem(2),
    const SampleItem(3),
  ];
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
      //floatingActionButton: FloatingActionButton(
      //onPressed: _increment,
      // child: const Icon(Icons.add),
      //),
      fabInRail: _fabInRail,
      includeBaseDestinationsInMenu: _includeBaseDestinationsInMenu,
    );
  }

  // ignore: long-method
  Widget _body() {
    // Gist: ListView builder is already a scollable list of things. To get
    //       look need list tile as card
    return ListView.builder(
      restorationId: 'sampleItemListView',
      itemCount: items.length,
      itemBuilder: (
        BuildContext context,
        int index,
      ) {
        final item = items[index];

        return ListTile(
            title: Text(
              'SampleItem ${item.id}',
              style: platformThemeData(
                context,
                material: (data) => data.textTheme.labelLarge,
                cupertino: (data) => data.ownText()?.appLabelLarge,
              ),
            ),
            subtitle: Text(
              'listed by FG',
              style: platformThemeData(
                context,
                material: (data) => data.textTheme.labelMedium,
                cupertino: (data) => data.ownText()?.appLabelMedium,
              ),
            ),
            leading: const CircleAvatar(
              // Display the Flutter Logo image asset.
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {},
        
        );
      },
    );

    
  }
}
