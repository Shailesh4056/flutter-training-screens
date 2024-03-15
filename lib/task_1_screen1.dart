import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:march_14_tasks/generated/assets.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SVG Images"),
      ),
      body: Center(
        child: Column(
          children: [
            SvgPicture.asset(Assets.imagesCloudArrowDownSvgrepoCom),
            const SizedBox(height: 100,),
            SvgPicture.asset(Assets.imagesCloudBoltSvgrepoCom),
            const SizedBox(height: 100,),
            SvgPicture.asset(Assets.imagesCloudMoonSvgrepoCom),
          ],
        ),
      ),
      
    );
  }
}
