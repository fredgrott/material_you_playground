// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:collection_widgets/src/infrastrucutre/app_vars.dart';
import 'package:collection_widgets/src/infrastrucutre/app_widget_keys.dart';
import 'package:collection_widgets/src/presentation/features/home/default_scaffold_demo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';






import 'package:collection_widgets/src/localization_gen/l10n.dart';




import 'presentation/themes/app_themedata.dart';



// I name it platformmyapp so as clue in devs that is the root widget where 
// platform stuff as far as delivering Cupertino widgets to Apple devices is defined.
class PlatformMyApp extends StatelessWidget {
  const PlatformMyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: appBrightness == Brightness.light
          ? appMaterialLightThemeData
          : appMaterialDarkThemeData,
      child: PlatformProvider(
        settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
        builder: (context) => PlatformApp(
          widgetKey: appKey,
          
          debugShowCheckedModeBanner: false,

          // so we can do navigation without context
          navigatorKey: navigatorKey,
          restorationScopeId: 'app',
          localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale(
              'en',
              '',
            ), // English, no country code
          ],

          material: (
            _,
            __,
          ) =>
              MaterialAppData(
            theme: appMaterialLightThemeData,
            // in user set themes, one hoook a controller
            themeMode: ThemeMode.light,
            darkTheme: appMaterialDarkThemeData,
            // both highContrast and darkContrast are to set colors for text when
            // we use Material on Cupertino widgets via MaterialBasedCupertinoThemeData
            // thus since colors on Cupertino side is routed through CupertinoDynamicColor
            // we have no need to use those themes.
          ),
          cupertino: (
            _,
            __,
          ) =>
          CupertinoAppData(
            theme: materialBasedCupertinoThemeData,
          ),
          home: const DefaultScaffoldDemo(),
        ),
        
        
      ),
    );
  }
}
