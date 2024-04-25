import 'package:flutter/material.dart';
import 'package:surprise_test2/screens/add_course_screen.dart';

import '../screens/car_view_screen.dart';

class Routers {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyCars(),settings: settings);
        case '/addCarData':
        return MaterialPageRoute(builder: (_) => const AddCourse(),settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) =>
            const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
            ));
    }
  }
}