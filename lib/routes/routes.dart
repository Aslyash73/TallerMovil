import 'package:flutter/material.dart';
import 'package:movilapp/models/menu_option.dart';
import 'package:movilapp/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "Home";

  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'Home',
        view: false,
        icon: Icons.home,
        name: 'home',
        desc: 'Home view',
        screen: HomeScreen()),
    MenuOptions(
        route: 'IMCAP',
        icon: Icons.accessibility,
        view: true,
        name: 'IMCAP',
        desc: 'Vida Saludable',
        screen: const ViewOneScreen()),
    MenuOptions(
        route: 'APPSUELDO',
        view: true,
        icon: Icons.contact_mail_outlined,
        name: 'APPSUELDO',
        desc: 'Calculo de sueldo!',
        screen: const ViewSecondScreen()),
  ];

//rutas
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var element in menuOptions) {
      appRoutes.addAll({element.route: (context) => element.screen});
    }

    return appRoutes;
  }

//ruta default
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => HomeScreen(),
    );
  }
}
