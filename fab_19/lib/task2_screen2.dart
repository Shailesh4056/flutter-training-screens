import 'package:flutter/material.dart';

class ScreenSecond extends StatefulWidget {
  const ScreenSecond({super.key});

  @override
  State<ScreenSecond> createState() => _ScreenSecondState();
}

class _ScreenSecondState extends State<ScreenSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Positioned(
              top: 40,
              left: 40,
              child: Container(
                width: 250,
                height: 280,
                color: Colors.green,
                child: const Text("Green",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            Positioned(
              top: 80,
              left: 70,
              child: Container(
                width: 250,
                height: 280,
                color: Colors.red,
                child: const Text("Green",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            Positioned(
              top: 120,
              left: 100,
              child: Container(
                width: 250,
                height: 280,
                color: Colors.purple,
                child: const Text("Green",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
          ],
      ),
    );
  }
}
