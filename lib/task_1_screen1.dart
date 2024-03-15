import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
   final PageController _pageController  = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          physics: BouncingScrollPhysics(),
          controller: _pageController,
          children: const  [
            PageViewOne(),
            PageViewTwo(),
            PageViewThree(),
          ],
        ),
      ),
    );
  }
}

///page 1

class PageViewOne extends StatelessWidget {
  const PageViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      child: StaggeredGrid.count(crossAxisCount: 4,axisDirection: AxisDirection.down,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [

          StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 1, child: Container(
            color: Colors.blue.shade900,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 2, child: Container(
            alignment: Alignment.center,
            color: Colors.blue.shade300,
            child: const Text("Page View ",style: TextStyle(fontSize: 35,color: Colors.white)),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(
            color: Colors.blue,
          ))
      
        ],),
    );
  }
}


///page 2

class PageViewTwo extends StatelessWidget {
  const PageViewTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      child: StaggeredGrid.count(crossAxisCount: 4,axisDirection: AxisDirection.down,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [
      
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
            color: Colors.blue.shade900,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 1, child: Container(
            color: Colors.blue.shade900,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 3, child: Container(
            alignment: Alignment.center,
            color: Colors.blue.shade300,
            child: const Text("Page View 2",style: TextStyle(fontSize: 35,color: Colors.white)),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 4, child: Container(
            color: Colors.blue,
          ))
      
        ],),
    );
  }
}
///page 3

class PageViewThree extends StatelessWidget {
  const PageViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(20),
      child: StaggeredGrid.count(crossAxisCount: 4,axisDirection: AxisDirection.down,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        children: [

          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 4, child: Container(
            alignment: Alignment.center,
            color: Colors.blue.shade300,
            child: const Text("Page View 3",style: TextStyle(fontSize: 35,color: Colors.white)),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: Container(
            color: Colors.blue,
          )),


        ],),
    );
  }
}