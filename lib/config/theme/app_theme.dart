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
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );
}
