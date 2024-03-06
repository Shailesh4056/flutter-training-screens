import 'package:fab_19/task2_screen6.dart';
import 'package:fab_19/task2_screen7.dart';
import 'package:fab_19/task2_screen8.dart';
import 'package:flutter/material.dart';
import 'task2_screen1.dart';
import 'task2_screen2.dart';
import 'task2_screen3.dart';
import 'task2_screen4.dart';
import 'task2_screen5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenEight(),
    );
  }
}
