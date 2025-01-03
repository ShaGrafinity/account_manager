import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'layouts/home_layout.dart';
import 'themes/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Account Manager',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: HomeLayout(),
      debugShowCheckedModeBanner: false,
    );
  }
}