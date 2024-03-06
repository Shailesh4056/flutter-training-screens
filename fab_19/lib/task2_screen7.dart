import 'package:flutter/material.dart';

class ScreenSeven extends StatefulWidget {
  const ScreenSeven({super.key});

  @override
  State<ScreenSeven> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenSeven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Example",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: 500,
            height: 600,
            color: Colors.red,
          ),
          Container(
            width: 400,
            height: 550,
            color: Colors.blue,
          ),
          Container(
            width: 300,
            height: 450,
            color: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}
