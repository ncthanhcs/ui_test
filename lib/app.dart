import 'package:flutter/material.dart';
import 'package:ui_test/configs/color.dart';
import 'package:ui_test/configs/routes.dart';
import 'package:ui_test/screens/home.dart';
import 'package:ui_test/utils/color.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final route = Routes();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: route.generateRoute,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: UtilColor.getColorFromHex(primaryColor),
            ),
            scaffoldBackgroundColor: UtilColor.getColorFromHex(primaryColor),
            primaryColor: UtilColor.getColorFromHex(primaryColor),
            textTheme: TextTheme(
              headline1: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              headline2: TextStyle(
                  fontSize: 18, color: UtilColor.getColorFromHex(lineColor)),
            )),
        home: const Home());
  }
}
