// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:fp_mediumclap/src/presentation/features/home/barrier.dart';
import 'package:fp_mediumclap/src/presentation/features/home/hole_painter.dart';
import 'package:fp_mediumclap/src/presentation/themes/app_themedata_ext.dart';


class Discovery extends StatelessWidget {
  final Widget child;
  final Widget description;
  final bool visible;
  final VoidCallback onClose;

  const Discovery({
    Key? key,
    required this.visible,
    required this.onClose,
    required this.description,
    required this.child,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Barrier(
      visible: visible,
      onClose: onClose,
      child: PortalEntry(
        visible: visible,
        closeDuration: kThemeAnimationDuration,
        portalAnchor: Alignment.center,
        childAnchor: Alignment.center,
        portal: Stack(
          children: [
            CustomPaint(
              painter: HolePainter(
                platformThemeData(
                  context, 
                  material: (data) => data.colorScheme.primary, 
                  // ignore: cast_nullable_to_non_nullable
                  cupertino: (data) => data.ownColor()?.appPrimary as Color,
                  ),
                ),
              child: TweenAnimationBuilder<double>(
                duration: kThemeAnimationDuration,
                curve: Curves.easeOut,
                tween: Tween(begin: 50, end: visible ? 200 : 50),
                builder: (context, radius, _,) {
                  return Padding(
                    padding: EdgeInsets.all(radius),
                    child: child,
                  );
                },
              ),
            ),
            Positioned(
              top: 100,
              left: 50,
              width: 200,
              child: DefaultTextStyle(
                style: platformThemeData(
                  context, 
                  // ignore: cast_nullable_to_non_nullable
                  material: (data) => data.textTheme.headlineSmall as TextStyle, 
                  // ignore: cast_nullable_to_non_nullable
                  cupertino: (data) => data.ownText()?.appHeadlineSmall as TextStyle,
                  ),
                child: TweenAnimationBuilder<double>(
                  duration: kThemeAnimationDuration,
                  curve: Curves.easeOut,
                  tween: Tween(begin: 0, end: visible ? 1 : 0,),
                  builder: (context, opacity, _,) {
                    return Opacity(
                      opacity: opacity,
                      child: description,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
