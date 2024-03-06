import 'package:flutter/material.dart';
import 'package:march_2_tasks/task_1_screen1.dart';
import 'package:march_2_tasks/task_1_screen2.dart';
import 'package:march_2_tasks/task_1_screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true
      ),
      home: const ScreenThree(),


    );
  }
}
