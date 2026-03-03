import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

//listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);
//un simple boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);
//un simple int
final selectedColorProvider = StateProvider<int>((ref) => 0);
//un simple double
final fontSizeProvider = StateProvider<double>((ref) => 1.0);






// un objeto de tipo AppTheme
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);

class ThemeNotifier extends StateNotifier<AppTheme>{
  //STATE = ESTADO = NEW APPTHEME()
  ThemeNotifier():super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }


  void decraseFont(double size){
    state = state.copyWith(fontSize: state.fontSize - size);
  }

  void increaseFont(double size){
    state = state.copyWith(fontSize: state.fontSize + size);
  }

  void changeColorIndex(int color){
    state = state.copyWith(selectedColor: color );
  }

}