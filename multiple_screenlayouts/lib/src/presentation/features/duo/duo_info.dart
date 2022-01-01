// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:multi_screen_layout/multi_screen_layout.dart';
import 'package:multiple_screenlayouts/src/presentation/features/home/second_page.dart';

class SurfaceDuoInfoPage extends StatelessWidget {
  const SurfaceDuoInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Surface Duo Info'),
      ),
      body: MultiScreenInfo(
        builder: (info) {
          return TwoPageLayout(
            secondChild: const SecondPage(
              showAppBar: false,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Text('The below information is from the Surface Duo SDK'),
                  Text(
                      'isDualScreenDevice: ${info.surfaceDuoInfoModel.isDualScreenDevice}',),
                  Text('isAppSpanned: ${info.surfaceDuoInfoModel.isSpanned}'),
                  Text('hingeAngle: ${info.surfaceDuoInfoModel.hingeAngle}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
