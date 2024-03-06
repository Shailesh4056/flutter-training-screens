import 'package:flutter/material.dart';
class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Counter();
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count  = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 700),
            child: Text("$count",style: const  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 700,top: 200),
            child: ElevatedButton(style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue)
              
            ), onPressed:(){
              setState(() {
                count++;
              });
            }, child: const Icon(Icons.add)),
          ),
          Padding(
            padding:  const EdgeInsets.only(left: 700,top: 10),
            child: ElevatedButton(style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)

            ), onPressed:(){
              setState(() {
                count = 0;
              });
            }, child: const Icon(Icons.restart_alt_outlined)),
          )
        ],
      ),
    );
  }
}
