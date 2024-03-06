import 'package:flutter/material.dart';
import 'package:fab_16_19/generated/assets.dart';

class GalleryScreen2 extends StatefulWidget {
  const GalleryScreen2({super.key});

  @override
  State<GalleryScreen2> createState() => _GalleryScreen2State();
}

class _GalleryScreen2State extends State<GalleryScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
                width: 1100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(Assets.imagesWatermelon, fit: BoxFit.fitWidth),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    Assets.imagesWatermelon,
                    height: 200,
                    width: 300,
                  ),
                ),
                Image.asset(
                  Assets.imagesWatermelon,
                  height: 400,
                  width: 300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
