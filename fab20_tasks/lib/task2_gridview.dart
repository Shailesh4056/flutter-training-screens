import 'package:flutter/material.dart';

class GridviewDemo extends StatefulWidget {
  const GridviewDemo({super.key});

  @override
  State<GridviewDemo> createState() => _GridviewDemoState();
}

class _GridviewDemoState extends State<GridviewDemo> {
  List<String> titles = [
    'This is title',
    'This is title',
  ];
  @override
  Widget build(BuildContext context) {
    bool isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text("Demo GridView"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
      crossAxisCount: isPortrait ? 2 :3,
      children: [
        Card(
        color: Colors.white,
        child: ListTile(
            title: Text(
              "${titles[0]} 1",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(titles[0].toString() + titles[1].toString(),
      ),
        )
        ),
        Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "${titles[0]} 2",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(titles[0].toString() + titles[1].toString(),
              ),
            )
        ),
        Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "${titles[0]} 3",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(titles[0].toString() + titles[1].toString(),
              ),
            )
        ),
        Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "${titles[0]} 4",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(titles[0].toString() + titles[1].toString(),
              ),
            )
        ),
        Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "${titles[0]} 5",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(titles[0].toString() + titles[1].toString(),
              ),
            )
        ),
        Card(
            color: Colors.white,
            child: ListTile(
              title: Text(
                "${titles[0]} 6",
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(titles[0].toString() + titles[1].toString(),
              ),
            ),
        ),
      ],)
    );
  }
}
