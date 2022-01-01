// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:multiple_screenlayouts/src/presentation/features/deviceinfo/android_deviceinfo.dart';
import 'package:multiple_screenlayouts/src/presentation/features/duo/duo_info.dart';
import 'package:multiple_screenlayouts/src/presentation/features/hinge/hinge.dart';
import 'package:multiple_screenlayouts/src/presentation/features/master/master_detail.dart';
import 'package:multiple_screenlayouts/src/presentation/features/two/two.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('This page always displays!'),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Two Page Layout Example'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (_) => const TwoPageLayoutExample(),),);
                  },
                ),
                ListTile(
                  title: Text('Master Detail Layout Example'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (_) => const MasterDetailLayoutExample(),),);
                  },
                ),
                ListTile(
                  title: Text('Android Device Posture Info'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (_) => const AndroidDevicePostureInfoPage(),),);
                  },
                ),
                ListTile(
                  title: Text('Surface Duo Device Info'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (_) => const SurfaceDuoInfoPage(),),);
                  },
                ),
                ListTile(
                  title: Text('Surface Duo Hinge Angle'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.push<dynamic>(
                        context,
                        MaterialPageRoute<dynamic>(
                            builder: (_) => const SurfaceDuoHingeAngle(),),);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}
