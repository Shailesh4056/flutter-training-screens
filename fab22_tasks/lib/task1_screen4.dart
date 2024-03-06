import 'package:flutter/material.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryWidth = MediaQuery.of(context).size.width;

    return  DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My profile", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black38,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 250,
              child: const Text("Profile Details Goes here"),
            ),
            Container(
              color: Colors.blue,
              height: 50,
              child: const TabBar(indicatorSize: TabBarIndicatorSize.tab,indicatorColor: Colors.white,tabs: [
                Tab(
                  icon: Icon(Icons.motorcycle,color: Colors.white),
                ),
                Tab(
                  icon: Icon(Icons.car_crash,color: Colors.white,),
                )
              ]),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: const Text("Bike"),
                ),
                Container(
                  alignment: Alignment.center,
                  color: Colors.red,
                  child: const Text("Car"),
                )
              ]),
            )
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                color: Colors.blue,
                height: mediaQueryHeight*0.2,
                child: const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: Text("Flutter step-by-step",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contacts"),
              ),
              const ListTile(
                leading: Icon(Icons.event),
                title: Text("Events"),
              ),
              const ListTile(
                leading: Icon(Icons.note_sharp),
                title: Text("Notes"),
              ),
              const Divider(),
             const  ListTile(
                leading: Icon(Icons.copy),
                title: Text("pages"),
              ),
              const ListTile(
                leading: Icon(Icons.person),
                title: Text("Author"),
              ),
              const ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Flutter Documentation"),
              ),
              const ListTile(
                leading: Icon(Icons.star),
                title: Text("Useful Links"),
              ),

             const SizedBox(height: 10,),
              const ListTile(
                leading: Icon(Icons.bug_report
                ),
                title: Text("Report and issue"),
              ),
              const ListTile(
                subtitle: Text("0.0.1"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
