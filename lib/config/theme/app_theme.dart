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
    this.selectedColor = 0,
    this.isDarkmode = false,
    this.fontSize = 1.0

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

  AppTheme copyWith ({
    int? selectedColor,
    bool? isDarkmode,
    double? fontSize
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor, 
    isDarkmode: isDarkmode ?? this.isDarkmode,
    fontSize: fontSize ?? this.fontSize
  );
}
