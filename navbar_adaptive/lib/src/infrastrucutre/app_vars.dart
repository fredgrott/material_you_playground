// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

//     1. how to get some platform envs without context via SchedulerBinding
//     2. How do we avoid using ! ie:
//           Brightness appBrightness = SchedulerBinding.instance!.window.platformBirghtness;
//       instead we should be doing this as then we have clearly marked that both the
//       appBrightness instance and its value will not be null.
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

Brightness? appBrightness =
    SchedulerBinding.instance?.window.platformBrightness;

bool? appHighContrast =
    SchedulerBinding.instance?.window.accessibilityFeatures.highContrast;

bool appDark = isDark();

bool isDark() {
  if (appBrightness == Brightness.dark) {
    return true;
  } else {
    return false;
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
