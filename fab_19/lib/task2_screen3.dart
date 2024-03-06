import 'package:fab_19/generated/assets.dart';
import 'package:flutter/material.dart';

class ScreenThird extends StatefulWidget {
  const ScreenThird({super.key});

  @override
  State<ScreenThird> createState() => _ScreenThirdState();
}

class _ScreenThirdState extends State<ScreenThird> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "flutterAssets.com",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              height: 150,
              width: 1100,
              color: Colors.white10,
              child: const Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage(
                          Assets.imageLaptop,
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 90, top: 65),
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: Colors.red,
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
