// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:feature_discovery/src/presentation/features/home/mycolortween.dart';
import 'package:feature_discovery/src/presentation/themes/app_themedata_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_portal/flutter_portal.dart';

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
            end: visible ? platformThemeData(
              context, 
              material: (data) => data.colorScheme.secondaryContainer, 
              // ignore: cast_nullable_to_non_nullable
              cupertino: (data) => data.ownColor()?.appSecondaryContainer as Color,
              ) : Colors.transparent,
          ),
          builder: (context, color, child,) {
            return ColoredBox(color: color);
          },
        ),
      ),
      child: child,
    );
  }
}
