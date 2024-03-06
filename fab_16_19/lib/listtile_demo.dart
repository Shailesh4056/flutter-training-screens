import 'package:flutter/material.dart';

class ListTileDemo extends StatefulWidget {
  const ListTileDemo({super.key});

  @override
  State<ListTileDemo> createState() => _ListTileDemoState();
}

class _ListTileDemoState extends State<ListTileDemo> {
   final TextStyle _textStyle = const TextStyle(fontSize: 30, fontWeight: FontWeight.normal);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  borderOnForeground: true,
                  child: ListTile(
                    title: Text(
                      "Without Back Button & Action",
                      style: _textStyle,
                    ),
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shadowColor: Colors.black45,
                  child: ListTile(
                    leading: const Icon(Icons.arrow_back),
                    title: Text("Center",
                        style: _textStyle, textAlign: TextAlign.center),
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shadowColor: Colors.black45,
                  child: ListTile(
                    leading: const Icon(Icons.arrow_back),
                    title: Text("With Back Button",
                        style: _textStyle, textAlign: TextAlign.center),
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shadowColor: Colors.black45,
                  child: ListTile(
                    leading: const Icon(Icons.arrow_back),
                    title: Text("With Single Action Button",
                        style: _textStyle, textAlign: TextAlign.center),
                    trailing: const Icon(Icons.settings),
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shadowColor: Colors.black45,
                  child: ListTile(
                    leading: const Icon(Icons.arrow_back),
                    title: Text("Search toolbar",
                        style: _textStyle, textAlign: TextAlign.center),
                    trailing: const Icon(Icons.search_rounded),
                  ),
                ),
                Card(
                  borderOnForeground: true,
                  shadowColor: Colors.black45,
                  child: ListTile(
                      leading: const Icon(Icons.menu),
                      title: Text("With Single Action Button",
                          style: _textStyle, textAlign: TextAlign.center),
                      trailing: const SizedBox(
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.share),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.search_rounded),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(Icons.horizontal_distribute)
                          ],
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
