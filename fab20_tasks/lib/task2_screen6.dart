import 'package:fab20_tasks/generated/assets.dart';
import 'package:flutter/material.dart';

class FeaturedApp extends StatefulWidget {
  const FeaturedApp({super.key});

  @override
  State<FeaturedApp> createState() => _FeaturedAppState();
}

class _FeaturedAppState extends State<FeaturedApp> {
  /// images list
  List<String> images = [
    Assets.imagesGame3,
    Assets.imagesDownload,
    Assets.imagesGame2,
    Assets.imagesGame3,
    Assets.imagesGame4,
    Assets.imagesGame5,
    Assets.imagesGame6,
    Assets.imagesGame7,
    Assets.imagesGame8,
    Assets.imagesGame9,
    Assets.imagesGame11
  ];

  /// games name list
  List<String> gamesTitle = [
    'Chess',
    'Scrabble',
    'Table',
    'Tennis',
    'Jenga',
    'Uno',
    'Snakes and Ladders',
    'Carrom',
    'Pictionary',
    'Monopoly',
    'Foosball (Table Football)',
    'Monopoly'
  ];
  @override
  Widget build(BuildContext context) {
    ///screen width
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Featured App",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Column(
          children: [
            SizedBox(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 2.2,
                                  offset: Offset.zero)
                            ]),
                        child: Image(
                          image: AssetImage(images[index]),
                        ),
                      ),
                    );
                  }),
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text("Best New Apps",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
              ),
              height: 230,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100)),
                        ),
                        Text(
                          "Disney Build it:\n${gamesTitle[index]}",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Disney Build it:\n${gamesTitle[index]}",
                          textAlign: TextAlign.start,
                        )
                      ],
                    );
                  }),
            ),
            const Divider(),
            const Align(
                alignment: Alignment.topLeft,
                child: Text("Best New Apps",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                    image: AssetImage(images[index]),
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100)),
                          ),
                          Text(
                            "Disney Build it:\n${gamesTitle[index]}",
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Disney Build it:\n${gamesTitle[index]}",
                            textAlign: TextAlign.start,
                          ),
                        ],
                      );
                    }),
              ),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
