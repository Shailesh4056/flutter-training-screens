import 'package:flutter/material.dart';
import 'package:march_12_tasks/generated/assets.dart';
import 'customBottomBar.dart';
class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  List<String> choice = ['Featured items','Most Recent','Current Items'];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new_rounded,),onPressed: (){
          Navigator.pop(context);
        },),
        title: const Text("Buyings"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.1,
            child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: choice.length,itemBuilder: (context, index) {
              return GestureDetector(
                onTap: (){
                  setState(() {
                    currentIndex = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
                      height: MediaQuery.of(context).size.height*0.05,
                      width: MediaQuery.of(context).size.height*0.17,
                      decoration:  BoxDecoration(
                        boxShadow: [BoxShadow(
                          color: Colors.black45,
                          spreadRadius: 2,
                        )],
                          color: currentIndex == index? Colors.deepPurple:Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      child: Text(choice[index],style:  TextStyle(color: currentIndex == index? Colors.white:Colors.black),),
                    ),
                  ],
                ),
              );
            },),
          ),
          Expanded(
            child: SafeArea(
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  height: MediaQuery.of(context).size.height*0.1,
                  decoration:  BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [BoxShadow(
                      color: Colors.black45,
                      blurRadius: 5
              
                    )]
                  ),
                  margin: const EdgeInsets.all(15),
                  child: Row(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height*0.07,
                        width: MediaQuery.of(context).size.width*0.15,
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Assets.imagesPrinters)
                          )
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width*0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                          const Text("Nikon 600D Mirroeless Nikon 600D",style: TextStyle(fontWeight: FontWeight.bold),),
                          const Text("\$4555",style: TextStyle(color: Colors.deepPurple),),
                          SizedBox(
                            height: MediaQuery.of(context).size.height*0.01,
                          ),
                           Row(
                            
                            children: [
                              const Align(
                                widthFactor: 0.5,
                                child: CircleAvatar(radius: 7,child: Image(image: AssetImage(Assets.imagesHeadset),),
                                ),
                              ),
                              const Align(
                                widthFactor: 0.5,
                                child: CircleAvatar(radius: 7,child: Image(image: AssetImage(Assets.imagesHeadset),),
                                ),
                              ),
                              const Align(
                                widthFactor: 0.5,
                                child: CircleAvatar(radius: 7,child: Image(image: AssetImage(Assets.imagesHeadset),),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width*0.02,
                              ),
                              const Text(" +255 new folloers")
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomBar()
    );
  }
}
