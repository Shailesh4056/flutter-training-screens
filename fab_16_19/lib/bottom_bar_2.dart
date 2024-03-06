import 'package:flutter/material.dart';

class BottomBarSecond extends StatefulWidget {
  const BottomBarSecond({super.key});

  @override
  State<BottomBarSecond> createState() => _BottomBarSecondState();
}

class _BottomBarSecondState extends State<BottomBarSecond> {
  @override
  int myIndex = 0;
  Widget build(BuildContext context) {
    const List<Widget> widgetOptions = <Widget>[
      Text("hello This is a home page"),
      Text("hello This is a reels page"),
      Text("hello This is a gallery page"),
      Text("hello This is a activity page"),
      Text("hello This is a profile page"),
    ];
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(myIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.cyan,
        currentIndex: myIndex,
        backgroundColor: Colors.black,
        onTap: (int index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation_outlined, color: Colors.black),
              label: "Reels"),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_size_select_actual_outlined,
                  color: Colors.black),
              label: "Gallery"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_rounded, color: Colors.black),
              label: "Activity"),
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_outlined, color: Colors.black),
              label: "Profile"),
        ],
      ),
    );
  }
}
