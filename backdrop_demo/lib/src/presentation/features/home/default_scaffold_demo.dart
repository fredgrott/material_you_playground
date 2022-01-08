// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:backdrop_demo/src/presentation/features/home/all_destinations.dart';
import 'package:backdrop_demo/src/presentation/themes/app_themedata_ext.dart';
import 'package:backdrop_demo/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:backdrop_demo/src/presentation/widgets/app_adaptive_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:we_slide/we_slide.dart';

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
    final double _panelMinSize = 130.0;
    final double _panelMaxSize = MediaQuery.of(context).size.height;
    final _controller = WeSlideController();


    return WeSlide(
      parallax: true,
      hideAppBar: true,
      hideFooter: false,
      panelMinSize: _panelMinSize,
      panelMaxSize: _panelMaxSize,
      backgroundColor: platformThemeData(
        context, 
        material: (data) => data.colorScheme.surfaceVariant, 
        // ignore: cast_nullable_to_non_nullable
        cupertino: (data) => data.ownColor()?.appSurfaceVariant as Color,
        ),
      panelBorderRadiusBegin: 20.0,
      panelBorderRadiusEnd: 20.0,
      parallaxOffset: 0.3,
      appBarHeight: 80.0,
      footerHeight: 60.0,
      controller: _controller,
      appBar: AdaptiveAppBar(
        title: PlatformText(
          'Default Demo',
          style: platformThemeData(
            context, 
            material: (data) => data.textTheme.titleLarge, 
            cupertino: (data) => data.ownText()?.appTitleLarge,
            ),
        ),
      ),
      body: Container(
          color: platformThemeData(
            context, 
            material: (data) => data.colorScheme.primaryContainer, 
            cupertino: (data) => data.ownColor()?.appPrimaryContainer,
            ),
          child: Center(child: Text(
            "This is the body 💪",
            style: platformThemeData(
              context, 
              material: (data) => data.textTheme.bodyMedium, 
              cupertino: (data) => data.ownText()?.appBodyMedium,
              ),),),
        ),
        panel: Container(
          color: platformThemeData(
            context, 
            material: (data) => data.colorScheme.primary, 
            cupertino: (data) => data.ownColor()?.appPrimary,
            ),
          child: Center(child: Text(
            "This is the panel 😊",
             style: platformThemeData(
            context,
            material: (data) => data.textTheme.bodyMedium,
            cupertino: (data) => data.ownText()?.appBodyMedium,
          ),
          ),),
        ),
        panelHeader: GestureDetector(
          onTap: () {
            _controller.show();
          },
          child: Container(
            height: 90.0,
            color: platformThemeData(
              context, 
              material: (data) => data.colorScheme.secondary, 
              cupertino: (data) => data.ownColor()?.appSecondary,
              ),
            child: Center(child: Text(
              "Slide to Up ☝️",
               style: platformThemeData(
              context,
              material: (data) => data.textTheme.bodyMedium,
              cupertino: (data) => data.ownText()?.appBodyMedium,
            ),
          ),),
          ),
        ),
        footer: Container(
          height: 60.0,
          color: Colors.orange,
          child: Center(child: Text(
            "This is the footer ",
             style: platformThemeData(
            context,
            material: (data) => data.textTheme.bodySmall,
            cupertino: (data) => data.ownText()?.appBodySmall,
          ),
        ),),
        ),
      

    );

    
  }
}
