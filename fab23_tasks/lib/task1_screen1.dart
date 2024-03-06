import 'package:fab23_tasks/task1_screen2.dart';
import 'package:fab23_tasks/task1_screen3.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body:  Container(
        margin: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Home Body"),
            const SizedBox(
              height: 10,
            ),
            Builder(
              builder: (context) {
                return MaterialButton(hoverColor: Colors.deepOrange,textColor: Colors.black,minWidth: 500,height: 50,color: Colors.white10,onPressed: (){
                  Scaffold.of(context).openEndDrawer();
                },child: const Text("Open Drawer"),);
              }
            )
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 20),
              alignment: Alignment.bottomLeft,
              color: Colors.blue,
              height: mediaQueryHeight * 0.2,
              child:  const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    radius: 30,
                    child: Text(
                      "KK",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kalpesh Khandia",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),

                    ),
                    Text(
                      "Kalpesh.Khandia@bosc.in",textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                ),

              ]),
            ),
            const ListTile(

              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
             ListTile(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenTwo()));
               },
              leading: const Icon(Icons.category),
              title: const Text("Categories"),
            ),
             ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenThree()));
              },
              leading: const Icon(Icons.add_comment_sharp),
              title: const Text("Add items"),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text("About us"),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text("Share with Friends"),
            ),
            const ListTile(
              leading: Icon(Icons.note_alt_sharp),
              title: Text("Rate and Review"),
            ),
            const ListTile(
              leading: Icon(Icons.flag),
              title: Text("privacy policy"),
            ),
          ],
        ),
      ),
    );
  }
}
