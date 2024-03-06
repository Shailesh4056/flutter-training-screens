import 'package:flutter/material.dart';

import 'dynamic_listview.dart';
import 'google_fonts.dart';
import 'keyboard_demo.dart';
import 'media_query.dart';

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
      debugShowCheckedModeBanner: false,
      home: GoogleFontsDemo(),

    );
  }
}
