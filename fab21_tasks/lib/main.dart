import 'package:fab21_tasks/task1_screen1.dart';
import 'package:fab21_tasks/task1_screen2.dart';
import 'package:fab21_tasks/task1_screen3.dart';
import 'package:fab21_tasks/task2_screen1.dart';
import 'package:fab21_tasks/task2_screen3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskTwoScreenTwo(),
    );
  }
}
