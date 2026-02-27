import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {
  static const name = "ui_control_screen";

  const UiControlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ui Controls")),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView({super.key});

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          value: isDeveloper,
          title: Text("Developer Mode"),
          subtitle: Text("Controles adicionales"),
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
        ),
        ExpansionTile(
          title: Text("Vehículo de transporte"),
          subtitle: Text(selectedTransportation.toString()),
          children: [
            RadioGroup(
              groupValue: selectedTransportation,
              onChanged: (Transportation? value) {
                setState(() {
                  selectedTransportation = value!;
                });
              },
              child: Column(
                children: [
                  RadioListTile<Transportation>(
                    title: Text('By car'),
                    subtitle: Text('Viajar por carro'),
                    value: Transportation.car,
                  ),
                  RadioListTile<Transportation>(
                    title: Text('By plane'),
                    subtitle: Text('Viajar por avión'),
                    value: Transportation.plane,
                  ),
                  RadioListTile<Transportation>(
                    title: Text('By boat'),
                    subtitle: Text('Viajar por barco'),
                    value: Transportation.boat,
                  ),
                  RadioListTile<Transportation>(
                    title: Text('By submarine'),
                    subtitle: Text('Viajar por submarino'),
                    value: Transportation.submarine,
                  ),
                ],
              ),
            ),
          ],
        ),
      
        // TODO: por aqui

        CheckboxListTile(
          title: Text("¿Incluir desayuno?"),
          subtitle: Text("Huevos a la pera"),
          value: wantsBreakfast, 
          onChanged: (value) => {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            })
          },
        ),
        CheckboxListTile(
          title: Text("¿Incluir Almuerzo?"),
          subtitle: Text("Almuerzo caribeño"),
          value: wantsLunch, 
          onChanged: (value) {
            setState(() {
              wantsLunch =! wantsLunch;
            });
          }
        ),
        CheckboxListTile(
          title: Text("¿Incluir Cena?"),
          subtitle: Text("Pastel de chancho"),
          value: wantsDinner, 
          onChanged: (value) => {
            setState(() {
              wantsDinner = !wantsDinner;
            })
          },
        )
      ],
    );
  }
}
