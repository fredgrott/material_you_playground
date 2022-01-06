// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'colortween.dart';

class Barrier extends StatelessWidget {
  final Widget child;
  final VoidCallback onClose;
  final bool visible;

  const Barrier({
    Key? key,
    required this.onClose,
    required this.visible,
    required this.child,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return PortalEntry(
      visible: visible,
      closeDuration: kThemeAnimationDuration,
      portal: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onClose,
        child: TweenAnimationBuilder<Color>(
          duration: kThemeAnimationDuration,
          tween: MyColorTween(
            begin: Colors.transparent,
            end: visible ? Colors.black54 : Colors.transparent,
          ),
          builder: (context, color, child) {
            return ColoredBox(color: color);
          },
        ),
      ),
      child: child,
    );
  }
}
