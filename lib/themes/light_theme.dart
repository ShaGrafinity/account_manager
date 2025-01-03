import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color.fromARGB(255, 26, 0, 71),
  colorScheme: ColorScheme.light(
    primary: Colors.deepPurple,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      fontSize: 40,
      fontFamily: 'FasterOne',
      fontWeight: FontWeight.normal,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontFamily: 'AllertaStencil',
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontFamily: 'AllertaStencil',
      fontWeight: FontWeight.normal,
    ),
  ),
);

List<Color> normalColor = [
  Colors.red,
  Colors.amber,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.pink,
  Colors.purple,
  Colors.orange,
  Colors.lime,
  Colors.cyan,
];
