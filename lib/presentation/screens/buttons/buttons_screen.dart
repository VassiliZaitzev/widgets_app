import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Screens"),
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Wrap(        
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
            const ElevatedButton(onPressed: null, child: Text("Elevated Disabled")),
            ElevatedButton.icon(onPressed: (){}, label: Text("Elevated Icon"), icon: const Icon(Icons.access_alarm_rounded)),
            FilledButton(onPressed: (){}, child: Text("Filled")),
            FilledButton.icon(onPressed: (){}, label: Text("Filled Icon"), icon: const Icon(Icons.accessibility_new)),

            OutlinedButton(onPressed: (){}, child: Text("Outlined")),
            OutlinedButton.icon(onPressed: (){}, label: Text("Outlined icon"), icon: const Icon(Icons.terminal)),
            TextButton(onPressed: (){}, child: Text("Text")),
            TextButton.icon(onPressed: (){}, label: Text("Text icon"), icon: const Icon(Icons.account_box_outlined)),

            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration_outlined)),

            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_outlined),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary)
              ),
            ),

            CustomButton()
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.amber,
        child: InkWell(
          onTap: () {
            
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("Hola mundo", style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}