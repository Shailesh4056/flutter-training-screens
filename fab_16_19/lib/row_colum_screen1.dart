import 'package:flutter/material.dart';

class RowColumScreen1 extends StatefulWidget {
  const RowColumScreen1({super.key});

  @override
  State<RowColumScreen1> createState() => _RowColumScreen1State();
}

class _RowColumScreen1State extends State<RowColumScreen1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10)),
        ),
       const SizedBox(
          height: 6,
        ),
        Row(
          children: [
            Container(
              width: 90,
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.lightBlue, borderRadius: BorderRadius.circular(10)),
                ),
            const SizedBox(width: 6),
            Expanded(
              child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                  color: Colors.deepOrange, borderRadius: BorderRadius.circular(10)),
            ),
            ),
          ],
        ),
        const SizedBox(
          height: 6,
        ),
        Container(height: 400,
          decoration: BoxDecoration(
              color: Colors.deepPurple, borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(
          height: 6,
        ),
        Expanded(child: Container(
        decoration: BoxDecoration(
            color: Colors.lightBlue,
          borderRadius: BorderRadius.circular(10)
        ),)),
      ],
    );
  }
}
