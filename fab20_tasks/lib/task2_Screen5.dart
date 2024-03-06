import 'package:flutter/material.dart';
class GridViwScreenFour extends StatefulWidget {
  const GridViwScreenFour({super.key});

  @override
  State<GridViwScreenFour> createState() => _GridViwScreenFiveState();
}

class _GridViwScreenFiveState extends State<GridViwScreenFour> {
  List<Color> color = [Colors.white12,Colors.green,Colors.blue,Colors.lightGreen,Colors.lime,Colors.lightGreen,Colors.pinkAccent,Colors.white
    ,Colors.white,Colors.lightGreen,Colors.blueAccent,Colors.greenAccent,Colors.brown,Colors.purple,Colors.grey];

  List<IconData> icons=[Icons.motorcycle,Icons.directions_boat,Icons.bus_alert,Icons.train,Icons.directions_walk,Icons.contact_mail_outlined,Icons.motorcycle,Icons.directions_boat,Icons.bus_alert
    ,Icons.train,Icons.directions_walk,Icons.contact_mail_outlined,Icons.speaker_notes,Icons.music_note,Icons.car_crash,];

  List<String> titles = ['Bicycle','Boat','Bus','Train','Walk','Contact','Bicycle'
    ,'Boat','Bus','Train','Notes','Walk','Car','Bicycle','Boat'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GridView.builder(itemCount: titles.length, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10), itemBuilder: (context,int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: color[index],
             child:  Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.only(top: 50),
                   child: Icon(icons[index],size: 25,),
                 ),
                  Text(titles[index].toString(),style: const TextStyle(color: Colors.black,fontSize: 10),)
                ],
              )
          ),
        );
      }),
    );
  }
}
