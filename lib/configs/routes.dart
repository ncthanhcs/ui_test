import 'package:flutter/material.dart';
import 'package:ui_test/screens/home.dart';
import 'package:ui_test/screens/not_found.dart';
import 'package:ui_test/screens/save.dart';

class Routes {
  static const String home = "/home";
  static const String save = "/save";

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const Home());
      case save:
        return MaterialPageRoute(builder: (context) => Save());
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFound(),
        );
    }
  }

  static final Routes _instance = Routes._internal();
  factory Routes() {
    return _instance;
  }
  Routes._internal();
}
