import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List<String> titles = [
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title',
    'This is title'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text("Demo ListView",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 600,
              child: ListView.builder(
                  itemCount: titles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Card(
                        color: Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(backgroundColor: Colors.blue,child: Text(index.toString(),style: const TextStyle(color: Colors.white),),),
                            title: Text("${titles[index]} $index",style: const TextStyle(fontWeight: FontWeight.bold),),
                            subtitle: Text(titles[index].toString() +
                                titles[index].toString()+titles[index].toString()+titles[index].toString()+titles[index].toString()+titles[index].toString()+titles[index].toString())),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
