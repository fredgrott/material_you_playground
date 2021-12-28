// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:staggered_animations/src/presentation/features/column/card_column_screen.dart';
import 'package:staggered_animations/src/presentation/features/grid/card_grid_screen.dart';
import 'package:staggered_animations/src/presentation/features/list/card_list_screen.dart';


class StaggeredAnimations extends StatelessWidget {
  const StaggeredAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: PlatformText('Staggered Animations'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('List Card Test'),
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  platformPageRoute<dynamic>(builder: (context) => const CardListScreen(), context: context,),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Grid Card Test'),
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  platformPageRoute<dynamic>(builder: (context) => const CardGridScreen(), context: context,),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Column Card Test'),
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  platformPageRoute<dynamic>(builder: (context) => const CardColumnScreen(), context: context,),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  
}

