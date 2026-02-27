import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackback = SnackBar(
      content: Text("Hola mundo"),
      action: SnackBarAction(label: "Ok", onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackback);
  }


  void openDialog(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text("¿Estás seguro?"),
        content: const Text("Elit culpa culpa mollit id officia minim aute anim. Ea officia et anim aliqua aute dolor labore sit laboris voluptate tempor commodo laborum excepteur. Cupidatat adipisicing laboris proident veniam laborum consectetur. Commodo id consequat dolore veniam dolore ea. Nulla aute fugiat enim ea pariatur nulla reprehenderit laboris ex et. Irure reprehenderit mollit dolor fugiat ullamco est nulla fugiat."),
        actions: [
          TextButton(
            onPressed: (){
              context.pop();
            }, 
            child: Text("Cancelar")
          ),
          FilledButton(
            onPressed: () => context.pop(), 
            child: Text("Aceptar")
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //inal theme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbars y diálogos"),
        //backgroundColor: theme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    Text("asdasdas")
                  ]
                );
              }, 
              child: Text("Licencias usadas")
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: Text("Mostrar diálogo")
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context), 
        label: Text("Mostrar Snackbar"), 
        icon: Icon(Icons.remove_red_eye)
      ),
    );
  }
}