// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:datatable_page/src/data/datasources/mydatasourcetable.dart';

import 'package:datatable_page/src/presentation/features/home/all_destinations.dart';
import 'package:datatable_page/src/presentation/features/home/standard_side_sheet.dart';
import 'package:datatable_page/src/presentation/themes/app_themedata_ext.dart';
import 'package:datatable_page/src/presentation/widgets/app_adaptive_appbar.dart';
import 'package:datatable_page/src/presentation/widgets/app_adaptive_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class DefaultScaffoldDemo extends StatefulWidget {
  const DefaultScaffoldDemo({Key? key}) : super(key: key);

  @override
  _DefaultScaffoldDemoState createState() => _DefaultScaffoldDemoState();
}

class _DefaultScaffoldDemoState extends State<DefaultScaffoldDemo> {
  
  final MyDataSourceTable source = MyDataSourceTable()..generation = 42;
  int _rowsPerPage = 2;

  

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

      drawerHeader: DrawerHeader(
        // ignore: use_named_constants
        margin: const EdgeInsets.all(0.0),

        // ignore: use_named_constants
        padding: const EdgeInsets.fromLTRB(
          0.0,
          0.0,
          0.0,
          0.0,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/grott_studios.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(),
      ),

      sideSheetBody: const StandardSideSheet(),
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
    return PaginatedDataTable(
      header: Text(
        "Yummy Goods",
        style: platformThemeData(
          context,
          material: (data) => data.textTheme.labelLarge
              ?.copyWith(color: data.colorScheme.tertiaryContainer),
          cupertino: (data) => data
              .ownText()
              ?.appLabelLarge
              ?.copyWith(color: data.ownColor()?.appTertiaryContainer),
        ),
      ),
      arrowHeadColor: platformThemeData(
        context,
        material: (data) => data.colorScheme.secondary,
        cupertino: (data) => data.ownColor()?.appSecondary,
      ),
      rowsPerPage: _rowsPerPage,
      showFirstLastButtons: true,
      availableRowsPerPage: const <int>[
        2,
        4,
        8,
        16,
      ],

      // Gist: a way to use adaptive breakpoints to fix things Flutter SDK team did not
      //       get to yet. In this case the overflow problem when choosing rows per page
      //       beyond allowed by device form. I set the default rows per page to 2 and
      //       check for screen breakpoint to allow higher rows.
      // ignore: prefer-extracting-callbacks
      onRowsPerPageChanged: (int? rowsPerPage) {
        setState(() {
          // two ways to convert to num for bool evaluation, to a string or convert to double
          if (_allowedRowsPerPageResolver(context) < rowsPerPage!.toDouble()) {
            _rowsPerPage = _allowedRowsPerPageResolver(context);
          } else {
            _rowsPerPage = rowsPerPage as int;
          }
          // ignore: cast_nullable_to_non_nullable
          
        });
      },
      // ignore: prefer-extracting-callbacks
      onPageChanged: (int rowIndex) {
        setState(() {
          // ignore: unnecessary_null_comparison
          if (rowIndex != null) {
            if (source.rowCount - rowIndex < _rowsPerPage) {
              _rowsPerPage = source.rowCount - rowIndex;
            } else {
              _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;
            }
          } else {
            _rowsPerPage = 2;
          }
        });
      },

      columns: const <DataColumn>[
        DataColumn(label: Text('Name')),
        DataColumn(
          label: Text('Calories'),
          numeric: true,
        ),
        DataColumn(label: Text('Generation')),
      ],

      source: source,
    );
  }

  int _allowedRowsPerPageResolver(BuildContext context) {
    if (_isXLargeScreen(context)) {
      return 16;
    } else if (_isLargeScreen(context)) {
      return 8;
    } else if (_isMediumScreen(context)) {
      return 4;
    }

    return 2;
  }

  bool _isXLargeScreen(BuildContext context) =>
      getWindowType(context) >= AdaptiveWindowType.xlarge;

  bool _isLargeScreen(BuildContext context) =>
      getWindowType(context) == AdaptiveWindowType.large;
  bool _isMediumScreen(BuildContext context) =>
      getWindowType(context) == AdaptiveWindowType.medium;
}
