import 'package:flutter/material.dart';
import 'package:materialyou_dynamiccolor/src/platform_myapp.dart';



Future<void> main() async {
  

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(const PlatformMyApp());
}
