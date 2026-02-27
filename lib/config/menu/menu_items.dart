import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, required this.subtitle, required this.link, required this.icon
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Botones",
    subtitle: "Varios botones en Flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined
  ),
  MenuItems(
    title: "Tarjetas",
    subtitle: "Un contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card
  ),
  MenuItems(
    title: "ProgressIndicators",
    subtitle: "Generales y controlados",
    link: "/progress",
    icon: Icons.refresh_rounded
  ),
  MenuItems(
    title: "Snackbars y Diálogos",
    subtitle: "Indicadores en Pantalla",
    link: "/snackbars",
    icon: Icons.info_outline
  ),
  MenuItems(
    title: "Animated Container",
    subtitle: "Statefulll widget animado",
    link: "/animated",
    icon: Icons.check_box_outline_blank_rounded
  ),
  MenuItems(
    title: "UI Controls + Tiles",
    subtitle: "Serie de controles Flutter",
    link: "/ui_controls",
    icon: Icons.car_rental_outlined
  )
];
