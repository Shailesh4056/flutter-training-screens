import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 1100,
        color: Colors.white54,
        child: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
