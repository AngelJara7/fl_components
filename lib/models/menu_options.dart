import 'package:flutter/material.dart' show IconData, Widget;

class MenuOptions {
  final String route;
  final IconData icon;
  final String nombre;
  final Widget screen;

  MenuOptions({
    required this.route,
    required this.icon,
    required this.nombre,
    required this.screen
    });
}
