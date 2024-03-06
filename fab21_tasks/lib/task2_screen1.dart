import 'package:flutter/material.dart';

class TaskTwoScreenOne extends StatefulWidget {
  const TaskTwoScreenOne({super.key});

  @override
  State<TaskTwoScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<TaskTwoScreenOne> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("My profile", style: TextStyle(color: Colors.white)),
            leading: const Icon(Icons.menu),
            backgroundColor: Colors.black38,
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: 250,
                child: const Text("Profile Details Goes here"),
              ),
              Container(
                color: Colors.blue,
                height: 50,
                child: const TabBar(indicatorSize: TabBarIndicatorSize.tab,indicatorColor: Colors.white,tabs: [
                  Tab(
                    icon: Icon(Icons.motorcycle,color: Colors.white),
                  ),
                  Tab(
                    icon: Icon(Icons.car_crash,color: Colors.white,),
                  )
                ]),
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: const Text("Bike"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: Colors.red,
                      child: const Text("Car"),
                  )
                ]),
              )
            ],
          ),
        ),
    );
  }
}
