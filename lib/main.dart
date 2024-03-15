import 'package:flutter/material.dart';
import 'package:march_6_tasks/task_1_screen1.dart';

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
      theme: ThemeData(
        fontFamily: 'Sofia-pro',
            textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 30))
      ),
      home: ScreenOne(),
    );
  }
}
