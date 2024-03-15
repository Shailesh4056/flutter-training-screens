import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(color: Colors.black38,height: 50,
          child: const Text("ListButton"),
          onPressed: (){
            showDialog(context: context, builder: (context) {
              return const AlertDialog(
                titlePadding: EdgeInsets.only(left: 50,top: 50),
                title: Text("Categories"),
                content: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.yellow,
                        ),
                        title: Text("foo1"),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.purple,
                        ),
                        title: Text("foo2"),
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 9,
                          backgroundColor: Colors.black,
                        ),
                        title: Text("foo3"),
                      ),
                  ]
                )
                ),

              );
            },);
          },
        ),
      ),
    );
  }
}
