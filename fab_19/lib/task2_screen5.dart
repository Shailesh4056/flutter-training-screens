import 'package:flutter/material.dart';

class ScreenFive extends StatefulWidget {
  const ScreenFive({super.key});

  @override
  State<ScreenFive> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 900,
        width: 1100,
        color: Colors.white54,
        child: Stack(
          children: [
            Positioned(
              top: 70,
              left: 180,
              child: Container(
                color: Colors.red,
                width: 600,
                height: 320,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child:  RotatedBox(
                      quarterTurns: 5,
                      child: Text(
                        "Container 1",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      )),
                ),
              )
              ),
            Positioned(
              top: 50,
              left: 150,
              child: Container(
                width: 200,
                height: 220,
                color: Colors.green,
                child:  const Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("Container 2",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
