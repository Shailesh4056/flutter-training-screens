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
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 50,
                    color: Colors.teal,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 50,
                    color: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 50,
                    color: Colors.teal,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.purple,
                  ),
                ),
              )
            ],

          ),
          Row(
            children: [
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      color: Colors.purple,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  color: Colors.teal,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
