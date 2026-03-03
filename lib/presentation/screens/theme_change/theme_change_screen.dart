import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget  {
  static String name = "theme_change_screen";

  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkmode;
    final color = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
        backgroundColor: color.primary,
        actions: [
          IconButton(
            icon: Icon(Icons.text_increase),
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).increaseFont(0.1);
            } 
            
          ),
          IconButton(
            icon: Icon(Icons.text_decrease),
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).decraseFont(0.1);
            }             
          ),
          IconButton(
            icon: isDarkMode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined),
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            } 
            
          )
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioGroup(
          
          groupValue:selectedColor,
          key: key,      
          onChanged: (val){
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          },
          child: Column(
            children: [
              RadioListTile(
                title: Text("Este color", style: TextStyle(color: color),),
                
                subtitle: Text("${color.toARGB32()}"),
                activeColor: color,
                value: index,
              )
            ],
          ),
        );
      },
    );
  }
}



          
          
          