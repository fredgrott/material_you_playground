// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

class HolePainter extends CustomPainter {
  final Color color;

  const HolePainter(this.color);

  

  @override
  void paint(Canvas canvas, Size size,) {
    final paint = Paint();
    paint.color = color;

    final center = Offset(size.width / 2, size.height / 2);

    canvas.drawPath(
      Path.combine(
        PathOperation.difference,
        Path()
          ..addOval(Rect.fromCircle(center: center, radius: size.width / 2)),
        Path()
          ..addOval(Rect.fromCircle(center: center, radius: 40))
          ..close(),
      ),
      paint,
    );
  }

  @override
  bool shouldRepaint(HolePainter oldDelegate) {
    return color != oldDelegate.color;
  }
}
