import 'package:flutter/material.dart';

class RowColumScreen3 extends StatefulWidget {
  const RowColumScreen3({super.key});

  @override
  State<RowColumScreen3> createState() => _RowColumScreen3State();
}

class _RowColumScreen3State extends State<RowColumScreen3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(width: 650,height: 550,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10))),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Container(width: 365,height: 150,
                    decoration: BoxDecoration(
                    color: Colors.blue,
                        borderRadius: BorderRadius.circular(10))
                ),
               const SizedBox(
                  height: 10,
                ),
                Container(width: 365,height: 400,
                    decoration: BoxDecoration(
                    color: Colors.red,
                        borderRadius: BorderRadius.circular(10))),
              ],
            ),
          ],
        ),
        const SizedBox(
            height: 10,
        ),
        Expanded(
          child: Container(height: 120,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10))),
        ),
        ]
    );
  }
}
