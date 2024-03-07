import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _TaskTwoScreenOneState();
}

class _TaskTwoScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Recipe App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 15,
              itemBuilder: (context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.27,
                  margin:
                      EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      boxShadow: const [BoxShadow(color: Colors.black)]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.4,
                        alignment: Alignment.topLeft,
                        child: Image(
                          height: 130,
                          width: 100,
                          image: const NetworkImage(
                              "https://st4.depositphotos.com/5697630/38092/i/450/depositphotos_380922666-stock-photo-tasty-appetizing-spaghetti-pasta-tomato.jpg"),
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.error,
                              color: Colors.red,
                            );
                          },
                          loadingBuilder:
                              (context, child, ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            } else {
                              return const CircularProgressIndicator();
                            }
                          },
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.height * 0.011),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Pasta with Tomato sauce",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const Text("Classic italian pasta with tomato sauce"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(Icons.access_time_rounded),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.01,
                                ),
                                const Text(" 30 min"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
