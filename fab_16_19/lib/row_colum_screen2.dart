import 'package:flutter/material.dart';

class RowColumScreen2 extends StatefulWidget {
  const RowColumScreen2({super.key});

  @override
  State<RowColumScreen2> createState() => _RowColumScreen2State();
}

class _RowColumScreen2State extends State<RowColumScreen2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 300,
            decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10))),
        const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Container(
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10))),
            const SizedBox(
              width: 6,
            ),
            Column(
              children: [
                Container(
                    height: 50,
                    width: 615,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10))),
                const SizedBox(
                  height: 6,
                ),
                Container(width: 615, height: 200, color: Colors.red),
              ],
            ),
          ],
        ),
        const SizedBox(height: 6),
        Container(
            height: 120,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10))),
      ],
    );
  }
}
