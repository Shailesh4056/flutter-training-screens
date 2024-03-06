import 'package:fab_16_tasks/counter_button.dart';
import 'package:flutter/material.dart';
import 'app_bar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterDisplay(),
    );
  }
}
