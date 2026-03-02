import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.yellow,
  Colors.cyan,
  Colors.purple,
  Colors.orange,

];

class AppTheme {
  final int selectedColor;
  AppTheme({
    required this.selectedColor
  }):assert(selectedColor >= 0 , 'Color debe ser mayor a 0'),
     assert(selectedColor < colorList.length , 'Color debe ser mayor a 0');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    /*textTheme: TextTheme(
      bodyLarge: TextStyle(fontSize: 18),
      bodyMedium: TextStyle(fontSize: 16),
      bodySmall: TextStyle(fontSize: 14),
      titleLarge: TextStyle(fontSize: 22),
      titleMedium: TextStyle(fontSize: 20),
      titleSmall: TextStyle(fontSize: 18),
      headlineLarge: TextStyle(fontSize: 32),
      headlineMedium: TextStyle(fontSize: 28),
      headlineSmall: TextStyle(fontSize: 24),
    ),*/
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );
}
