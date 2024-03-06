import 'package:flutter/material.dart';
import 'generated/assets.dart';

class ScreenEight extends StatefulWidget {
  const ScreenEight({super.key});

  @override
  State<ScreenEight> createState() => _ScreenEightState();
}

class _ScreenEightState extends State<ScreenEight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.imageNewYork),
                    fit: BoxFit.cover,
                  )),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)),
            child: const Column(
              children: [
                Text(
                  "New York",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "New York City, often referred to as NYC or simply the Big Apple, is the most populous city in the United States,New York City, often referred to as NYC or simply the Big Apple, is the most populous city in the United States",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
