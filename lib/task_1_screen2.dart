import 'package:flutter/material.dart';
import 'package:march_7_tasks/task_1_screen1.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}
class _ScreenTwoState extends State<ScreenTwo> {
  List<Widget> container  = [const ContainerOne(),const ContainerTwo(),const ContainerThree()];
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0,keepPage: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemCount: container.length,controller: _pageController,  onPageChanged: (value){
        setState(() {
          currentPage = value;
        });
      },itemBuilder: (context, int index ){
        return container[index];
      }),
      bottomSheet: Container(
        padding: const EdgeInsets.only(left: 20,right: 30),
        color: Colors.white,
        height: MediaQuery.of(context).size.height*0.08,
        width: MediaQuery.of(context).size.width*1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("My Logo",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 20),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List<Widget>.generate(container.length, (index) => GestureDetector(
                onTap: (){
                  _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                      radius: 7,
                    backgroundColor: currentPage==index? Colors.blue:Colors.blue.withOpacity(0.3),
                    ),
                ),
              )),
            ),
          ],
        )
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
      color: Colors.red,
      child: const Text("Page 1",style: TextStyle(fontSize: 40,color: Colors.white),),
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
      color: Colors.pink,
      child: const Text("Page 2",style: TextStyle(fontSize: 40,color: Colors.white),),
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
      color: Colors.purple,
      child: const Text("Page 3",style: TextStyle(fontSize: 40,color: Colors.white),),
    );
  }
}

