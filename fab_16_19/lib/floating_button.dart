import 'package:flutter/material.dart';

class FloatingButtons extends StatefulWidget {
  const FloatingButtons({super.key});

  @override
  State<FloatingButtons> createState() => _FloatingButtonsState();
}

class _FloatingButtonsState extends State<FloatingButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Default FloatingActionButton",
              style: TextStyle(fontSize: 30),
            ),
            FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "label FloatingActionButton",
              style: TextStyle(fontSize: 30),
            ),
            FloatingActionButton.extended(
                onPressed: () {},
                label: const Text("Add"),
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150.0))),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "circle border FloatingActionButton",
              style: TextStyle(fontSize: 30),
            ),
            FloatingActionButton(
              backgroundColor: Colors.cyan,
              onPressed: () {},
              shape: const StadiumBorder(
                side: BorderSide(width: 3, color: Colors.black),
              ),
              child: const Icon(Icons.warning),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Rounded border FloatingActionButton",
              style: TextStyle(fontSize: 30),
            ),
            FloatingActionButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              child: const Icon(Icons.shopping_cart),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "icon with label FloatingActionButton",
              style: TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 130,
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.green,
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)
                    ),
                    label: const Text("Add",style: TextStyle(color: Colors.white),),
                    icon: const Icon(Icons.add,color: Colors.white,),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    label: const Text("Take picture",style: TextStyle(color: Colors.white),),
                    icon: const Icon(Icons.add_a_photo,color: Colors.white,),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}
