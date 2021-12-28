// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

class AutoRefresh extends StatefulWidget {
  final Duration duration;
  final Widget child;

  const AutoRefresh({
    Key? key,
    required this.duration,
    required this.child,
  }) : super(key: key);

  @override
  _AutoRefreshState createState() => _AutoRefreshState();
}

class _AutoRefreshState extends State<AutoRefresh> {
  int? keyValue;
  ValueKey<dynamic>? key;

  Timer? _timer;

  @override
  void initState() {
    super.initState();

    keyValue = 0;
    key = ValueKey<dynamic>(keyValue);

    _recursiveBuild();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _recursiveBuild() {
    _timer = Timer(
      widget.duration,
      // ignore: prefer-extracting-callbacks
      () {
        setState(() {
          keyValue = keyValue! + 1;
          key = ValueKey<dynamic>(keyValue);
          _recursiveBuild();
        });
      },
    );
  }

  
}
