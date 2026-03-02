import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangeScreen extends ConsumerWidget  {
  static String name = "theme_change_screen";

  const ThemeChangeScreen({super.key});

  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    final isDarkMode = ref.watch(isDarkModeProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
        actions: [
          IconButton(
            icon: isDarkMode ? Icon(Icons.dark_mode_outlined) : Icon(Icons.light_mode_outlined),
            onPressed: (){
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
    final int selectedColor = ref.watch(selectedColorProvider);
    
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        final Color color = colors[index];

        return RadioGroup(
          
          groupValue:selectedColor,
          onChanged: (val){
            ref.read(selectedColorProvider.notifier).update((val) => val);
          },
          child: Column(
            children: [
              RadioListTile(
                title: Text("Este color $selectedColor", style: TextStyle(color: color),),
                
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



          
          
          