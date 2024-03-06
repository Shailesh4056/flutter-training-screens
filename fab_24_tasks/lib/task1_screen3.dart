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
        title: Text("Wrep Widget",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
        body: Container(
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width * 0.3,
      color: Colors.red,
      child: Wrap(
        children:  [
          Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              "aaaaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
              "cccccccccccccccccccccccccccccccccccccccc"),
          Text("bbbbbbbbbb cccccccc")
        ],
      ),
    ));
  }
}
