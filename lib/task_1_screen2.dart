import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List screens = [const ScreensOne(), const ScreensTwo(), const ScreensThree(),const ScreensFour()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: BouncingScrollPhysics(),
          itemCount: screens.length,
          itemBuilder: (BuildContext context, int index) {
            return screens[index];
          }),
    );
  }
}

class ScreensOne extends StatelessWidget {
  const ScreensOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.orange.shade900,
            child: const Icon(Icons.home, color: Colors.white, size: 250),
          ),
           Positioned(
            bottom: 100,
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: const Column(
                children: [
                  Text("WelCome",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  SizedBox(
                    height: 30,
                  ),
                  Text("the first thing search engines that tells them what your website is about. ",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

///Screen Two
class ScreensTwo extends StatelessWidget {
  const ScreensTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.redAccent.shade200,
            child: const Icon(Icons.thumb_up_alt_rounded, color: Colors.white, size: 250),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: const Column(
                children: [
                  Text("Simple To Use",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text("the first thing search engines that tells them what your website is about. ",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

///Screen Three

class ScreensThree extends StatelessWidget {
  const ScreensThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.blue.shade700,
            child: const Icon(Icons.image, color: Colors.white, size: 250),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: const Column(
                children: [
                  Text("Easy Parallax",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text("the first thing search engines that tells them what your website is about. ",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


///Screen Four

class ScreensFour extends StatelessWidget {
  const ScreensFour({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            color: Colors.orange.shade900,
            child: const Icon(Icons.edit, color: Colors.white, size: 250),
          ),
          Positioned(
            bottom: 100,
            child: Container(
              width: MediaQuery.of(context).size.width*0.8,
              child: const Column(
                children: [
                  Text("Customize",
                      style: TextStyle(fontSize: 40, color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text("the first thing search engines that tells them what your website is about. ",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}