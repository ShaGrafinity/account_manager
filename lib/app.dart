import 'package:account_manager/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Account Manager',
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: SizedBox(),
      debugShowCheckedModeBanner: false,
    );
  }
}