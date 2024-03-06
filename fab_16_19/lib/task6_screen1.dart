import 'package:fab_16_19/main.dart';
import 'package:fab_16_19/task6_screen2.dart';
import 'package:flutter/material.dart';
import 'package:fab_16_19/generated/assets.dart';
import 'row_colum_screen3.dart';
import 'row_colum_screen2.dart';
import 'row_colum_screen1.dart';

class GalleryScreen1 extends StatefulWidget {
  const GalleryScreen1({super.key});

  @override
  State<GalleryScreen1> createState() => _GalleryScreen1State();
}

class _GalleryScreen1State extends State<GalleryScreen1> {
  final TextStyle textStyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  var images = [
    Assets.imagesKiwi,
    Assets.imagesOrange,
    Assets.imagesStrawberry,
    Assets.imagesWatermelon
  ];
  List<String> titles = ['kiwi', 'Orange', 'Strawberry', 'Watermelon'];
  var subtitle = [
    'Kiwifruit contains vitamin K.',
    'orange is good for health',
    'Strawberry is a nice food',
    'Watermelon is good for health'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          "Photo shoot",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          SizedBox(width: 15),
          Icon(
            Icons.search,
            color: Colors.white,
            weight: 10,
          ),
          SizedBox(width: 20),
          Icon(Icons.account_circle, color: Colors.white, weight: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 900,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
              itemCount: images.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GalleryScreen2()));
                        });
                      },
                      leading: Image.asset(
                        images[index],
                        width: 70,
                      ),
                      title: Text(titles[index].toString()),
                      subtitle: Text(subtitle[index]),
                      trailing: const Text("May o5"),
                    ),
                    Divider(),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
