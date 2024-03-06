import 'package:flutter/material.dart';
class GridViwScreenTwo extends StatefulWidget {
  const GridViwScreenTwo({super.key});

  @override
  State<GridViwScreenTwo> createState() => _GridViwScreenTwoState();
}

class _GridViwScreenTwoState extends State<GridViwScreenTwo> {
  List<Color> color = [Colors.green,Colors.pinkAccent,Colors.purple,Colors.purpleAccent,Colors.black12,Colors.deepPurple,Colors.yellow,Colors.brown
    ,Colors.white38,Colors.green,Colors.green,Colors.purple,Colors.brown,Colors.purple,Colors.grey];
  List<IconData> icons=[Icons.home,Icons.email_rounded,Icons.alarm,Icons.wallet,Icons.backup,Icons.book,Icons.camera_alt
    ,Icons.person,Icons.print,Icons.phone,Icons.speaker_notes,Icons.music_note,Icons.car_crash,Icons.motorcycle,Icons.directions_boat];
  List<String> titles = ['Home','Email','Alarm','Wallet','Backup','Book','Camera'
    ,'Person','Print','Phone','Notes','Music','Car','Bicycle','Boat'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(itemCount: titles.length, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,int index){
        return Card(
          color: color[index],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50,bottom: 15),
                child: Icon(icons[index],size: 30,),
              ),
              Text(titles[index].toString(),style: const TextStyle(color: Colors.black,fontSize: 20),)
            ],
          ),
        );
      }),
    );
  }
}
