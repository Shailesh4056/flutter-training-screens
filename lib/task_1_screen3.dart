import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("RichText Example"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Single ",
                    style: TextStyle(fontSize: 30,color: Colors.blueAccent,fontWeight: FontWeight.bold)
                  ),
                  TextSpan(
                      text: "Line ",
                      style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.bold,backgroundColor: Colors.teal)
                  ),
                  TextSpan(
                      text: " MultiPle  ",
                      style: TextStyle(fontSize: 25,color: Colors.orange,fontFamily: 'Schyler')
                  ),
                  TextSpan(
                      text: " Styles",
                      style: TextStyle(fontSize: 25,color: Colors.red,fontFamily: 'italic')
                  ),
                ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
