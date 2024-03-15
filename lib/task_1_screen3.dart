import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: Scaffold(
              body: NestedScrollView(
        body: TabBarView(children: [
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 50,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("List Item " + index.toString()),
                    ),
                  ));
            },
          ),
          ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 50,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    setState(() {});
                  },
                  child: Card(
                    child: ListTile(
                      title: Text("List Item " + index.toString()*2),
                    ),
                  ));
            },
          ),
        ]),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return List.generate(
            1,
            (index) => SliverAppBar(
              backgroundColor: Colors.blue,
              title: Text("Flutter Demo Home Page",
                  style: TextStyle(color: Colors.white)),
              pinned: true,
              floating: true,
              bottom: TabBar(tabs: [
                Tab(
                  child: Text(
                    "page 1",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    "page 2",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ]),
            ),
          );
        },
      ))),
    );
  }
}
