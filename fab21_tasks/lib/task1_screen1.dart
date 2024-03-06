import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StaggeredGrid.count(
      crossAxisCount: 4,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children: [
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.green,
              child: const Icon(Icons.window_rounded,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.blue,
              child: const Icon(Icons.wifi,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.yellow,
              child: const Icon(Icons.desktop_windows,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.brown,
              child: const Icon(Icons.book,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.red,
              child: const Icon(Icons.share,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 2,
            child: Container(
              color: Colors.indigo,child: const Icon(Icons.brightness_1_outlined,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.red,
              child: const Icon(Icons.bluetooth,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.pink,
              child: const Icon(Icons.battery_alert,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.purple,
              child: const Icon(Icons.desktop_windows,color: Colors.white),
            )),
        StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 1,
            child: Container(
              color: Colors.blue,
              child: const Icon(Icons.radio,color: Colors.white),
            )),
      ],
    ));
  }
}
