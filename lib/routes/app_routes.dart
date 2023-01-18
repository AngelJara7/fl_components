import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import '../models/models.dart';

class AppRoutes {
  static const initialRoutes = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        nombre: 'Página Principal',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOptions(
        route: 'alert',
        nombre: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert),
    MenuOptions(
        route: 'listview1',
        nombre: 'Lista de Opciones',
        screen: const Listview1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'card',
        nombre: 'Tarjetas',
        screen: const CardScreen(),
        icon: Icons.credit_card_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

/*
  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'listview1': (BuildContext context) => const Listview1Screen(),
  };
*/
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
