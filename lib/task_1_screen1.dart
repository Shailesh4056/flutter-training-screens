import 'package:flutter/material.dart';
class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> with SingleTickerProviderStateMixin{
  late final TabController _pageController = TabController(length: 3,initialIndex: 0, vsync:this );
  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Kinda Code.com"),
          centerTitle: true,
          bottom: TabBar(
            controller: _pageController,
            tabs:  const [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.shop),
              ),
              Tab(
                icon: Icon(Icons.newspaper),
              ),
            ],),
        ),
        body:  SafeArea(
          child: Stack(
            children: [
          TabBarView(controller: _pageController,children: const [
                ContainerOne(),
                ContainerTwo(),
                ContainerThree(),
              ]),
              Positioned(
                bottom: 0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width*1,
                  height: MediaQuery.of(context).size.height*0.2,
                  color: Colors.black12.withOpacity(0.5),
                  child: TabPageSelector(
                    controller: _pageController,
                    indicatorSize: 20,
                    selectedColor: Colors.white,
                    color: Colors.black38,
          
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


class ContainerOne extends StatelessWidget {
  const ContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    return                 Container(
      alignment: Alignment.center,
      height: 50,
      color: Colors.blue,
      child: const Text("Home",style: TextStyle(fontSize: 40,color: Colors.white),),
    );
  }
}

class ContainerTwo extends StatelessWidget {
  const ContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: Colors.red,
      child: const Text("Shop",style: TextStyle(fontSize: 40,color: Colors.white),),
    );
  }
}

class ContainerThree extends StatelessWidget {
  const ContainerThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: Colors.green,
      child: const Text("News",style: TextStyle(fontSize: 40,color: Colors.white),),
    );
  }
}

