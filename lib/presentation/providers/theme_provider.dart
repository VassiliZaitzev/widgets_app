import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';



//listado de colores inmutables
final colorListProvider = Provider((red) => colorList);

//un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

//un simple int
final selectedColorProvider = StateProvider<int>((ref) => 1);

//un simple double
final fontSizeProvider = StateProvider<double>((ref) => 1.0);