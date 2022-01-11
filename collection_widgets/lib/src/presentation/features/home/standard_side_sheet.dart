// Copyright 2022 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:collection_widgets/src/presentation/themes/app_themedata_ext.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class StandardSideSheet extends StatelessWidget {
  const StandardSideSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Center(
        child: Text(
          "Just some side content, Nothing to see here. Nothing to do here.",
          style: platformThemeData(
            context,
            material: (data) => data.textTheme.bodyMedium,
            cupertino: (data) => data.ownText()?.appBodyMedium,
          ),
        ),
      ),
    );

    
  }
}
