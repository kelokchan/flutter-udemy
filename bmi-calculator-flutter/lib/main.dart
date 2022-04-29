import 'package:flutter/material.dart';
import 'package:sailor/sailor.dart';

import 'screens/input_page.dart';
import 'screens/result_page.dart';

void main() {
  Routes.createRoutes();
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        accentColor: Color(0xFFFF0367),
      ),
      home: InputPage(),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
      // routes: {
      //   '/': (context) => InputPage(),
      //   '/result': (context) => ResultPage(),
      // },
    );
  }
}

class Routes {
  static final sailor = new Sailor();

  static void createRoutes() {
    sailor.addRoutes([
      SailorRoute(
        name: '/',
        builder: (context, args, params) => InputPage(),
      ),
      SailorRoute(
        name: '/result',
        builder: (context, args, params) => ResultPage(args),
      ),
    ]);
  }
}
