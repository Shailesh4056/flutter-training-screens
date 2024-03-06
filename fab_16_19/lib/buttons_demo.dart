import 'package:flutter/material.dart';

class ButtonsDemo extends StatefulWidget {
  const ButtonsDemo({super.key});

  @override
  State<ButtonsDemo> createState() => _ButtonsDemoState();
}

class _ButtonsDemoState extends State<ButtonsDemo> {
  String dropDownItems = 'vehicle';
  var items = ['Car', 'Bike', 'super car'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.percent_rounded),
          ),
          const SizedBox(
            height: 30,
          ),
          DropdownButton(
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newItems) {
                setState(() {
                  dropDownItems = newItems!;
                });
              }),
          IconButton(iconSize: 50, onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
