import 'package:flutter/material.dart';

class TaskTwoScreenOne extends StatefulWidget {
  const TaskTwoScreenOne({super.key});

  @override
  State<TaskTwoScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<TaskTwoScreenOne> {
  int storeCurrentIndex = 0;
  int pickupCurrentIndex = 0;
  int pickupCurrentIndexTwo = 0;
  int amenitiesCurrentIndex = 0;
  List storeTitles = ['24 Hour Service', 'Open Now'];
  List pickupOptions = [
    'Store Pickup',
    'Curbside',
    'Beach Delivery',
    'Home Delivery',
    'Table Delivery',
    'Office Delivery'
  ];
  List amenities = ['Wifi', 'Online Ordering', 'Parking'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_circle_left_outlined),
        title: const Text("Filter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Store Hours",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Wrap(
              verticalDirection: VerticalDirection.up,
              children: List.generate(
                  storeTitles.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            storeCurrentIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(15.0),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              color: storeCurrentIndex == index
                                  ? Colors.yellow
                                  : Colors.lime,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Text(storeTitles[index]),
                        ),
                      ))),
          const Text(
            "Pickup Options",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                  pickupOptions.sublist(0, 3).length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            pickupCurrentIndex = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(15.0),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              color: pickupCurrentIndex == index
                                  ? Colors.yellow
                                  : Colors.lime,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Text(pickupOptions[index]),
                        ),
                      ))),
          Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                  pickupOptions.sublist(3).length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            pickupCurrentIndexTwo = index;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(15.0),
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.3,
                          decoration: BoxDecoration(
                              color: pickupCurrentIndexTwo == index
                                  ? Colors.yellow
                                  : Colors.lime,
                              borderRadius: BorderRadius.circular(30.0)),
                          child: Text(pickupOptions[index]),
                        ),
                      ))),
          const Text(
            "Amenities",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Wrap(
              direction: Axis.horizontal,
              children: List.generate(
                  amenities.length,
                      (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        amenitiesCurrentIndex = index;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(15.0),
                      height: MediaQuery.of(context).size.height * 0.04,
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: BoxDecoration(
                          color: amenitiesCurrentIndex == index
                              ? Colors.yellow
                              : Colors.lime,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Text(amenities[index]),
                    ),
                  ))),
          const SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: MaterialButton(height: 50,minWidth: 500,color: Colors.yellow,onPressed: (){},child: const Text("Confirm")),
          )
        ],
      ),
    );
  }
}
