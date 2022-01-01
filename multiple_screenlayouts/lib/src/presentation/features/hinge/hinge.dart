// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_screen_layout/multi_screen_layout.dart';
import 'package:multiple_screenlayouts/src/presentation/features/home/second_page.dart';

class SurfaceDuoHingeAngle extends StatelessWidget {
  const SurfaceDuoHingeAngle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiScreenInfo(
      // ignore: prefer-extracting-callbacks
      builder: (info) {
        
        return Opacity(
          opacity: min(info.surfaceDuoInfoModel.hingeAngle, 180) / 180,
          child: Scaffold(
            appBar: AppBar(title: const Text('Surface Duo Hinge Angle')),
            body: TwoPageLayout(
              // ignore: sort_child_properties_last
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(
                        'The hinge angle should display below and update in real'
                        ' time. The opacity of this widget is linked to the '
                        'angle, as you close the device the screen should darken.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Text(
                      '${info.surfaceDuoInfoModel.hingeAngle}',
                      style: const TextStyle(fontSize: 36),
                    ),
                  ],
                ),
              ),
              secondChild: const SecondPage(
                showAppBar: false,
              ),
            ),
          ),
        );
      },
    );
  }
}
