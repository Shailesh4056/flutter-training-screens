import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  List<String> banners = [
    'https://m.media-amazon.com/images/I/71a0PWlJPUL.jpg',
    'https://cdn.pixabay.com/photo/2016/11/29/12/54/cafe-1869656_1280.jpg',
    'https://media.istockphoto.com/id/1286692956/photo/empty-cafe-interior-with-chairs-and-tables.jpg?s=612x612&w=0&k=20&c=8rBA3ZWw6Cc4usSNj4QOkXRMfclmOlOU_HpH9emZLRA=',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg/1200px-R%C3%B6e_g%C3%A5rd_caf%C3%A9_2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    var mediaQueryorientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(Icons.tablet_rounded),
            Icon(Icons.devices_other),
          ],
        ),
        body: Builder(builder: (context) {
          if (mediaQueryWidth >= 600) {
            return lendScapeWidget();
          } else {
            return portraitWidget();
          }
        }));
  }

  Widget portraitWidget() {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: mediaQueryHeight * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(banners[1]),
              fit: BoxFit.cover,
            )),
          ),
          Wrap(
            children: [
              for (int i = 0; i < banners.length; i++) ...[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: NetworkImage(banners[i]),
                        height: 30,
                        width: 30,
                      )),
                ),
              ]
            ],
          ),
          Container(
            height: mediaQueryHeight * 0.3,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(banners[1]),
              fit: BoxFit.cover,
            )),
          ),
          Wrap(
            children: [
              for (int i = 0; i < banners.length; i++) ...[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        image: NetworkImage(banners[i]),
                        height: 30,
                        width: 30,
                      )),
                ),
              ]
            ],
          ),
        ],
      ),
    );
  }

  /// lendScapeWidget Method is here

  Widget lendScapeWidget() {
    var mediaQueryWidth = MediaQuery.of(context).size.width;
    var mediaQueryHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth * 0.40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(banners[1]),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth * 0.55,
                    child: Wrap(
                      children: [
                        for (int i = 0; i < banners.length; i++) ...[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(banners[i]),
                                  height: 50,
                                  width: 40,
                                )),
                          ),
                        ]
                      ],
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                children: [
                  Container(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth * 0.40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(banners[1]),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth * 0.55,
                    child: Wrap(
                      children: [
                        for (int i = 0; i < banners.length; i++) ...[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(banners[i]),
                                  height: 50,
                                  width: 40,
                                )),
                          ),
                        ]
                      ],
                    ),
                  )
                ],
              )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth * 0.40,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: NetworkImage(banners[1]),
                      fit: BoxFit.cover,
                    )),
                  ),
                  SizedBox(
                    height: mediaQueryHeight * 0.3,
                    width: mediaQueryWidth * 0.55,
                    child: Wrap(
                      children: [
                        for (int i = 0; i < banners.length; i++) ...[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image(
                                  image: NetworkImage(banners[i]),
                                  height: 50,
                                  width: 40,
                                )),
                          ),
                        ]
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
