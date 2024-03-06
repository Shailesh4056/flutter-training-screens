import 'package:flutter/material.dart';

class GridViewScreenThree extends StatefulWidget {
  const GridViewScreenThree({super.key});

  @override
  State<GridViewScreenThree> createState() => _GridViewScreenThreeState();
}

class _GridViewScreenThreeState extends State<GridViewScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom gridview in flutter",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body:GridView.custom(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), childrenDelegate: SliverChildBuilderDelegate((BuildContext context, int index){
        return  Container(
          color: index%2==0 ? Colors.green : Colors.yellow,
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Text(index.toString(),style: const TextStyle(color: Colors.black,fontSize: 20),textAlign: TextAlign.center,),
          ),
        );
      }))
    );
  }
}
