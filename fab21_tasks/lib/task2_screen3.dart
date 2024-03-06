import 'package:flutter/material.dart';

class TaskTwoScreenTwo extends StatefulWidget {
  const TaskTwoScreenTwo({super.key});

  @override
  State<TaskTwoScreenTwo> createState() => _TaskTwoScreenTwoState();
}

class _TaskTwoScreenTwoState extends State<TaskTwoScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("TabBar", style: TextStyle(color: Colors.white)),
            centerTitle: true,
            backgroundColor: Colors.pinkAccent,
          ),
          body: Column(
            children: [
              TabBar(
                padding: EdgeInsets.all(8.0),
                unselectedLabelColor: Colors.pink,
                indicatorColor: Colors.pink,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.pink,
                ),
                tabs: [
                  Tab(
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Status",
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Status",
                          )),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 60,
                      width: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.deepOrange),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Status",
                          )),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                      itemCount: 50,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text("Chet List $index"),
                              trailing: const Icon(Icons.arrow_right_alt_outlined),
                              subtitle: const Text("TabBar Demo"),
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 50,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text("Status List $index"),
                              trailing: const Icon(Icons.arrow_right_alt_outlined),
                              subtitle: const Text("TabBar Demo"),
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: 50,
                      itemBuilder: (BuildContext context, int index) {
                        return SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              title: Text("Call List $index"),
                              trailing: const Icon(Icons.arrow_right_alt_outlined),
                              subtitle: const Text("TabBar Demo"),
                            ),
                          ),
                        );
                      })
                ]),
              )
            ],
          ),
        ));
  }
}
