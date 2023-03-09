import 'package:flutter/material.dart';

//mmodelo para mapeart todas las rutas
class MenuOptions {
  final String route;
  final IconData icon;
  final String name;
  final String desc;
  final bool view;
  final Widget screen;

  MenuOptions(
      {required this.route,
      required this.icon,
      required this.name,
      required this.desc,
      required this.view,
      required this.screen});
}
