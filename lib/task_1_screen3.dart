import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:march_12_tasks/customBottomBar.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Map<IconData,List<String>> card =  {Icons.shopping_cart:["Buying"],Icons.house_outlined:["Selling"],Icons.shopping_bag_outlined:["treads"]
  ,Icons.slow_motion_video:["video"],Icons.percent:["Deals"],Icons.book_online_rounded:["Case Study"]};

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vestimate",style: TextStyle(color: Colors.blueAccent.shade700)),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width*01,
        color: Colors.black12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:MediaQuery.of(context).size.height*0.0),
            const Text("Choose your area",style: TextStyle(fontSize: 20),),
            SizedBox(height:MediaQuery.of(context).size.height*0.02),
            Expanded(
              child: GridView.builder(scrollDirection: Axis.vertical,
                itemCount: card.length,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 15,mainAxisSpacing: 15,childAspectRatio: 1.2), itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedIndex=index;
                      print(index);
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                        color: selectedIndex == index?Colors.deepPurpleAccent:Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(size: MediaQuery.of(context).size.height*0.05,card.keys.elementAt(index),color: selectedIndex == index?Colors.white:Colors.deepPurpleAccent,),
                        SizedBox(height:MediaQuery.of(context).size.height*0.02),
                        Text(card.values.elementAt(index).toString(),style: TextStyle(color: selectedIndex==index?Colors.white:Colors.deepPurple),),
                      ],
                    ),
                    ),
                );
              },),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
