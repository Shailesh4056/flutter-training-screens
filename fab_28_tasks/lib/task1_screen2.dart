import 'package:flutter/material.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        direction: Axis.vertical,
        verticalDirection: VerticalDirection.up,
        runSpacing: 5,
        spacing: 5,
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.orange,
            child: const Text("w1",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.deepPurple,
            child: const Text("w2",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.green,
            child: const Text("w3",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.red,
            child: const Text("w4",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.yellow,
            child: const Text("w5",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.purple,
            child: const Text("w6",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.yellow,
            child: const Text("w7",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.yellow,
            child: const Text("w8",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.purple.shade300,
            child: const Text("w9",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.yellow.shade300,
            child: const Text("w10",style: TextStyle(fontSize: 24)),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.10,
            width: MediaQuery.of(context).size.height*0.1,
            color: Colors.blue.shade400,
            child: const Text("w12",style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
