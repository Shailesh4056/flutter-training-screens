import 'package:fab_16_19/bottom_bar_1.dart';
import 'package:fab_16_19/bottom_bar_2.dart';
import 'package:fab_16_19/buttons_demo.dart';
import 'package:fab_16_19/floating_button.dart';
import 'package:fab_16_19/listtile_demo.dart';
import 'package:fab_16_19/task6_screen2.dart';
import 'app_bar.dart';
import 'row_colum_screen1.dart';
import 'row_colum_screen2.dart';
import 'row_colum_screen3.dart';
import 'package:flutter/material.dart';
import 'task6_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarSix(),
    );
  }
}

