import 'package:flutter/material.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenSix> {
  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
          children: [
            Positioned(
              top: 70,
              left: 180,
              child: Container(
                width: 600,
                height: 320,
                color: Colors.red,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child:  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      "Container 1",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 150,
              child: Container(
                width: 450,
                height: 260,
                color: Colors.green,
                child: const Align(
                  alignment: Alignment.bottomCenter,
                  child:  Text(
                    "Container 2",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 35,
              left: 400,
              child: Container(
                width: 250,
                height: 220,
                color: Colors.blue,
                child: const Align(
                  alignment: Alignment.center,
                  child:  Text(
                    "Container 3",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
