import 'package:fab23_tasks/task1_screen1.dart';
import 'package:fab23_tasks/task1_screen2.dart';
import 'package:fab23_tasks/task1_screen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override Widget build(BuildContext context) {
    initState(){
      super.initState();
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: [SystemUiOverlay.bottom]);
    }
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenThree(),
    );
  }
}

