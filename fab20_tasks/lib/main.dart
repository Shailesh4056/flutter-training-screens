import 'package:fab20_tasks/task2_Screen5.dart';
import 'package:fab20_tasks/task2_gridview.dart';
import 'package:fab20_tasks/task2_listview.dart';
import 'package:fab20_tasks/task2_screen3.dart';
import 'package:fab20_tasks/task2_screen4.dart';
import 'package:fab20_tasks/task2_screen6.dart';
import 'package:fab20_tasks/task2_screen7.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RestaurantHomeScreen(),
    );
  }
}
