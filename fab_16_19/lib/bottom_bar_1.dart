import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: myIndex,
          onDestinationSelected: (int index) {
            setState(() {
              myIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                label: "Favorite"),
            NavigationDestination(
                icon: Icon(Icons.music_note, color: Colors.deepPurpleAccent),
                label: "Music"),
            NavigationDestination(
                icon: Icon(
                  Icons.place_sharp,
                  color: Colors.blue,
                ),
                label: "Places"),
            NavigationDestination(
                icon: Icon(
                  Icons.newspaper,
                  color: Colors.orange,
                ),
                label: "Places"),
          ],
        ),
      ),
    );
  }
}
