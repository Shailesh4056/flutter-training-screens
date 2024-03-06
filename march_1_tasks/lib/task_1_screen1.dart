import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var paddingTop = MediaQuery.of(context).padding.top;
    var paddingBottom = MediaQuery.of(context).padding.bottom;
    var safeAreaTop = MediaQuery.of(context).viewInsets.top;
    var safeAreaBottom = MediaQuery.of(context).viewInsets.bottom;
    var appBarHeight = AppBar().preferredSize.height;
    var usableScreen = MediaQuery.of(context).size.height-paddingTop+paddingBottom;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const LinearProgressIndicator(
            value: 1.0,
            minHeight: 15,
            color: Colors.blue,
          ),
          Text("Height of the Screen:- $mediaHeight"),
          Text("Safe Area Bottom:- $safeAreaBottom"),
          Text("Safe Area Top and Bottom: - $safeAreaTop"),
          Text("AppBar height: - $appBarHeight"),
          Text("Top Padding: - $paddingTop"),
          Text("Bottom Padding: - $paddingBottom"),
          Text("Usable Screen Height: - $usableScreen"),
          const LinearProgressIndicator(
            value: 0.0,
            minHeight: 15,
            color: Colors.blue,
          ),

        ],
      ),
    );
  }
}
