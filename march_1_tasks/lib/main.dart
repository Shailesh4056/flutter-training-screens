import 'package:flutter/material.dart';
import 'package:march_1_tasks/task_1_screen1.dart';
import 'package:march_1_tasks/task_1_screen2.dart';
import 'package:march_1_tasks/task_1_screen3.dart';
import 'package:march_1_tasks/task_1_screen4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenFour(),
    );
  }
}
