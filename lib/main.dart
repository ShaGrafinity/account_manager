import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // DatabaseService.init('accounts.db');
  windowsConfig();

  runApp(const App());
}

Future<void> windowsConfig() async {
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = WindowOptions(
    title: 'Account Manager',
    size: Size(700, 500),
    minimumSize: Size(700, 500),
    maximumSize: Size(700, 500),
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
}
