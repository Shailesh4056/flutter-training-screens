import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.deepPurple,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: "Home",
        ),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.house_siding,
              color: Colors.black54,
            ),
            label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.black54,
          ),
          label: "Message",
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black54), label: "Message"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black54,
            ),
            label: "Message"),
      ],
    );
  }
}
