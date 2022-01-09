// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:bottomsheet_demo/src/presentation/features/home/all_destinations.dart';
import 'package:bottomsheet_demo/src/presentation/features/home/simple_modal.dart';
import 'package:bottomsheet_demo/src/presentation/themes/app_themedata_ext.dart';
import 'package:bottomsheet_demo/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:bottomsheet_demo/src/presentation/widgets/app_adaptive_scaffold.dart';
import 'package:flutter/cupertino.dart';
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
        actions: [
          GestureDetector(
            child: Icon(Icons.arrow_upward),
             onTap: () => showModalBottomSheet<dynamic>(
               context: context, 
               builder: (context) => const SimpleModal(),
               ),
          ),
        ],
      ),
      body: _body(),
      
      fabInRail: _fabInRail,
      includeBaseDestinationsInMenu: _includeBaseDestinationsInMenu,
      
    );
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


