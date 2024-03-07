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
        title: const Text("Wrep Widget",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
        body: Container(
          alignment: Alignment.topLeft,
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.18,
      color: Colors.red,
      child: Wrap(
        children:  [
          Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              "aaaaaaaaaa"),
          Text("bbbbb ccccc")
        ],
      ),
    ));
  }
}
