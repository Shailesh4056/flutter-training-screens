import 'package:flutter/material.dart';

class KeyboardDemo extends StatefulWidget {
  const KeyboardDemo({super.key});

  @override
  State<KeyboardDemo> createState() => _KeyboardDemoState();
}

class _KeyboardDemoState extends State<KeyboardDemo> {
  @override
  Widget build(BuildContext context) {
    final keyBordSize = MediaQuery.of(context).viewInsets.bottom;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Keyboard Size Is $keyBordSize",
              hintStyle: const TextStyle(
                color: Colors.red
              )
            ),
          ),
          ElevatedButton(onPressed: (){
            FocusScope.of(context).unfocus();
          }, child: const Text("Hide"))
        ],
      ),
    );
  }
}
