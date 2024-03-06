import 'package:flutter/material.dart';
class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.26,
            ),
                  Container(
                    height: 170,
                    width: 300,
                    child: Visibility(visible: isVisible,child: const Image(fit: BoxFit.cover,image: NetworkImage("https://t3.ftcdn.net/jpg/05/57/63/62/360_F_557636219_cZyiUrp6tdNyBvZswMZe4YIR70Pe2War.jpg")
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        height: MediaQuery.of(context).size.width*0.08,
                        width: MediaQuery.of(context).size.width*0.5,
                    child:
                    ElevatedButton(style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(isVisible==true ? Colors.blue:Colors.black26),
                    ),onPressed: (){
                      setState(() {
                        isVisible =true;
                      });
                    }, child:const Text("Show Logo",style: TextStyle(color: Colors.white,fontSize: 20)))),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width*0.08,
                  width: MediaQuery.of(context).size.width*0.5,
                  child:
                  ElevatedButton(style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue)
                  ),onPressed: (){
                    setState(() {
                      isVisible =false;
                    });
                  }, child:const Text("Hide Logo",style: TextStyle(color: Colors.white,fontSize: 20))))
          ],
        ),
      ),
    );
  }
}
