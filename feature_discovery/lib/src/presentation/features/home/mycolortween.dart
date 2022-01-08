// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class MyColorTween extends Tween<Color> {
  MyColorTween({required Color begin, required Color end,})
      : super(begin: begin, end: end,);

  @override
  Color lerp(double t) => Color.lerp(begin, end, t)!;
}
