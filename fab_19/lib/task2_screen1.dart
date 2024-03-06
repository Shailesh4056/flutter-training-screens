import 'package:flutter/material.dart';

class ScreenFirst extends StatefulWidget {
  const ScreenFirst({super.key});

  @override
  State<ScreenFirst> createState() => _ScreenFirstState();
}

class _ScreenFirstState extends State<ScreenFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 1100,
        color: Colors.green,
        child: Stack(
          children: [
            Container(
              width: 350,
              height: 400,
              color: Colors.blue,
            ),
            Container(
              width: 150,
              height: 200,
              color: Colors.pink,
            )
          ],
        ),
      ),
    );
  }
}
