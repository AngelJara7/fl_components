import 'package:flutter/material.dart';

import 'package:fl_components/screens/screens.dart';
import '../models/models.dart';

class AppRoutes {
  static const initialRoutes = 'home';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'listview1', nombre: 'Lista de Opciones', screen: const Listview1Screen(), icon: Icons.list_alt_outlined),
    MenuOptions(route: 'alert', nombre: 'Alertas', screen: const AlertScreen(), icon: Icons.add_alert_outlined),
    MenuOptions(route: 'card', nombre: 'Tarjetas', screen: const CardScreen(), icon: Icons.credit_card_outlined),
    MenuOptions(route: 'avatar', nombre: 'Circle Avatar', screen: const AvatarScreen(), icon: Icons.supervised_user_circle_outlined),
    MenuOptions(route: 'animated', nombre: 'Animated Contanier', screen: const AnimatedScreen(), icon: Icons.play_circle_outline_rounded),
    MenuOptions(route: 'inputs', nombre: 'Inputs Texts', screen: const InputsScreen(), icon: Icons.input_rounded),
    MenuOptions(route: 'slider', nombre: 'Slider and Checks', screen: const SliderScreen(), icon: Icons.slow_motion_video_rounded),
    MenuOptions(route: 'listviewbuilder', nombre: 'InfiniteScroll and Pull to refresh', screen: const ListViewBuilderScreen(), icon: Icons.build_circle_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});

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
