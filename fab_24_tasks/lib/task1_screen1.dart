import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        alignment: WrapAlignment.end,
        spacing: 33,
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.2,

            decoration: BoxDecoration(
                color: Colors.pink,
              border: Border.all(color: Colors.deepPurpleAccent)
            ),
            child: const Text("Woolha",style: TextStyle(color: Colors.white),),
          ),

          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.2,

            decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(color: Colors.deepPurpleAccent)
            ),
            child: const Text("Woolha",style: TextStyle(color: Colors.white),),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.2,

            decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(color: Colors.deepPurpleAccent)
            ),
            child: const Text("Woolha",style: TextStyle(color: Colors.white),),
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height*0.15,
            width: MediaQuery.of(context).size.width*0.2,

            decoration: BoxDecoration(
                color: Colors.pink,
                border: Border.all(color: Colors.deepPurpleAccent)
            ),
            child: const Text("Woolha",style: TextStyle(color: Colors.white),),
          ),
           Wrap(
            spacing: 100,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.2,

                decoration: BoxDecoration(
                    color: Colors.pink,
                    border: Border.all(color: Colors.deepPurpleAccent)
                ),
                child: const Text("Woolha",style: TextStyle(color: Colors.white),),
              ),

              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.2,

                decoration: BoxDecoration(
                    color: Colors.pink,
                    border: Border.all(color: Colors.deepPurpleAccent)
                ),
                child: const Text("Woolha",style: TextStyle(color: Colors.white),),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.15,
                width: MediaQuery.of(context).size.width*0.2,

                decoration: BoxDecoration(
                    color: Colors.pink,
                    border: Border.all(color: Colors.deepPurpleAccent)
                ),
                child: const Text("Woolha",style: TextStyle(color: Colors.white),),
              )
      ],
    ),
      ]
    ),
    );
  }
}
