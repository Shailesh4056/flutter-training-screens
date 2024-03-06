import 'package:flutter/material.dart';

class TaskTwoScreen extends StatefulWidget {
  const TaskTwoScreen({super.key});

  @override
  State<TaskTwoScreen> createState() => _TaskTwoScreenState();
}

class _TaskTwoScreenState extends State<TaskTwoScreen> {
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
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, int index) {
              return Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.height * 0.02),
                    margin: EdgeInsets.all(
                        MediaQuery.of(context).size.height * 0.01),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: const[
                           BoxShadow(color: Colors.black)
                        ]),
                    child:    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage( "https://www.shutterstock.com/image-photo/head-shot-portrait-close-smiling-600nw-1714666150.jpg"),
                        ),
                        const Text("John Doe",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const Text("Flutter Develi"),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.05,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.email_rounded),
                                Text(" john.doe@example.com"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.phone),
                                Text("+1 (123) 456-7890"),
                              ],
                            )

                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
      ),
    );
  }
}
