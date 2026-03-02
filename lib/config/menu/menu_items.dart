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
    title: "Riverpod Screen",
    subtitle: "Introducción a riverpod en Flutter",
    link: "/counter-river",
    icon: Icons.add
  ),
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
  ),
  MenuItems(
    title: "Introducción a la Aplicación",
    subtitle: "Pequeño tutorial introductorio",
    link: "/tutorial",
    icon: Icons.accessible_rounded
  ),
  MenuItems(
    title: "Infinitescroll y Pull",
    subtitle: "Listas infinitas y pull to refresh",
    link: "/infinite",
    icon: Icons.list_alt_rounded
  ),
  MenuItems(
    title: "Cambiar tema",
    subtitle: "Cambiar tema de la aplicacion",
    link: "/theme-changer",
    icon: Icons.color_lens_outlined
  )


  
];
