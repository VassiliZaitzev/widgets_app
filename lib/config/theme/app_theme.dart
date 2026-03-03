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
  final bool isDarkmode;
  final double fontSize;
  AppTheme({
    required this.selectedColor,
    required this.isDarkmode,
    required this.fontSize
  }):assert(selectedColor >= 0 , 'Color debe ser mayor a 0'),
     assert(selectedColor < colorList.length , 'Color debe ser mayor a 0');
     
  

  ThemeData getTheme()  {
    final safeFontSize = fontSize.clamp(0.7, 1.5);
    return ThemeData(    
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      textTheme: TextTheme(
        bodyMedium: TextStyle(fontSize: 14 * safeFontSize),
        titleLarge: TextStyle(fontSize: 22 * safeFontSize),
        headlineMedium: TextStyle(fontSize: 26 * safeFontSize),
      ),
      appBarTheme: AppBarTheme(
        centerTitle: false,
      )
    );
  }
}
