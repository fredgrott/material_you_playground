// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Original By Material IO team under BSD clciense

import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AdaptiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Widget? title;
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final PreferredSizeWidget? bottom;
  final double? elevation;
  final Color? shadowColor;
  final ShapeBorder? shape;
  final Color? backgroundColor;
  final IconThemeData? iconThemeData;
  final IconThemeData? actionsIconThemeData;
  final bool primary;
  final bool? centerTitle;
  final bool excludeHeaderSemantics;
  final double titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  @override
  final Size preferredSize;
  final double? toolbarHeight;
  final double? leadingWidth;
  final TextStyle? toolbarTextStyle;
  final TextStyle? titleTextStyle;
  final SystemUiOverlayStyle? systemOverlayStyle;

  AdaptiveAppBar({
    Key? key,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.shadowColor,
    this.shape,
    this.backgroundColor,
    this.iconThemeData,
    this.actionsIconThemeData,
    this.primary = true,
    this.centerTitle,
    this.excludeHeaderSemantics = false,
    this.titleSpacing = NavigationToolbar.kMiddleSpacing,
    this.toolbarOpacity = 1.0,
    this.bottomOpacity = 1.0,
    this.toolbarHeight,
    this.leadingWidth,
    this.toolbarTextStyle,
    this.titleTextStyle,
    this.systemOverlayStyle,
  })  : assert(elevation == null || elevation >= 0.0),
        preferredSize = Size.fromHeight(
          toolbarHeight ??
              kToolbarHeight + (bottom?.preferredSize.height ?? 0.0),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double grottify() {
      double me;

      me = getWindowType(context) == AdaptiveWindowType.large ? 96.0 : 72.0;
      me = getWindowType(context) == AdaptiveWindowType.medium ? 72.0 : 56.0;

      return me;
    }

    return AppBar(
      key: key,
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      title: title,
      actions: actions,
      flexibleSpace: flexibleSpace,
      bottom: bottom,
      elevation: elevation,
      shadowColor: shadowColor,
      shape: shape,
      backgroundColor: backgroundColor,
      iconTheme: iconThemeData,
      actionsIconTheme: actionsIconThemeData,
      primary: primary,
      centerTitle: centerTitle,
      excludeHeaderSemantics: excludeHeaderSemantics,
      titleSpacing: titleSpacing,
      toolbarOpacity: toolbarOpacity,
      bottomOpacity: bottomOpacity,
      toolbarHeight: toolbarHeight,
      // possible at the top of build block, maybe :0
      // (https://github.com/material-components/material-components-flutter-adaptive/issues/2):
      // This needs to depend on whether the rail is showing or not.

      leadingWidth: grottify(),

      //leadingWidth:
      //getWindowType(context) == AdaptiveWindowType.medium ? 72.0 : 56.0,
      toolbarTextStyle: toolbarTextStyle,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: systemOverlayStyle,
    );
  }
}
