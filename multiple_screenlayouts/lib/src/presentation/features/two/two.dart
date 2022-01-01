// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:multi_screen_layout/multi_screen_layout.dart';

class TwoPageLayoutExample extends StatelessWidget {
  const TwoPageLayoutExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Page Layout Example'),
      ),
      body: const TwoPageLayout(
        secondChild: Center(
          child: Text(
            'Hello from page 2! This only displays when spanned across 2 '
            'displays or the device posture is half opened. Also known as '
            "Samsung's Flex Mode.",
            textAlign: TextAlign.center,
          ),
        ),
        child: Center(
          child: Text('Hello from page 1! This always displays'),
        ),
      ),
    );
  }
}
