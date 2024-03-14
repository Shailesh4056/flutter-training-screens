import 'package:flutter/material.dart';
import 'package:march_12_tasks/task_1_screen1.dart';
import 'package:march_12_tasks/task_1_screen3.dart';
import 'package:march_12_tasks/task_Screen4.dart';

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
    return const MaterialApp(
      home: ScreenOne(),
    );
  }
}
