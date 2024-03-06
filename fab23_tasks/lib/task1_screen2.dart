import 'dart:async';

import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  List images = [
    'https://t3.ftcdn.net/jpg/05/14/83/78/360_F_514837813_Cg27F2rvPKDPATUcFnZvG6h94dnLeMit.jpg',
    'https://m.media-amazon.com/images/I/610x+s6vPKL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/61sdlDvePXL.jpg',
    'https://t3.ftcdn.net/jpg/05/14/83/78/360_F_514837813_Cg27F2rvPKDPATUcFnZvG6h94dnLeMit.jpg',
    'https://m.media-amazon.com/images/I/610x+s6vPKL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/61sdlDvePXL.jpg',
    'https://t3.ftcdn.net/jpg/05/14/83/78/360_F_514837813_Cg27F2rvPKDPATUcFnZvG6h94dnLeMit.jpg',
    'https://m.media-amazon.com/images/I/610x+s6vPKL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/61sdlDvePXL.jpg',
    'https://t3.ftcdn.net/jpg/05/14/83/78/360_F_514837813_Cg27F2rvPKDPATUcFnZvG6h94dnLeMit.jpg',
    'https://m.media-amazon.com/images/I/610x+s6vPKL._AC_UF1000,1000_QL80_.jpg',
    'https://m.media-amazon.com/images/I/61sdlDvePXL.jpg',
  ];
  List price = [
    '\$199.99',
    '\$160.99',
    '\$109.99',
    '\$140.99',
    '\$130.99',
    '\$120.99',
    '\$99.99',
    '\$9.99',
    '\$299.99',
    '\$399.99',
    '\$199.99',
    '\$199.99',
  ];

  ///tabBar menus
  List tabMenus = [
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor",
    "All",
    "HP",
    "Asus",
    "Razor"
  ];

  double lodeValue = 0.0;
  void _updateValue(){
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {
        lodeValue = lodeValue+0.01;
      });
    });
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    _updateValue();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, bottom: 13),
            child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                child: const Text(
                  "Mechanical Keybord",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: tabMenus.length,
                itemBuilder: (context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: AnimatedContainer(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: currentIndex == index
                                      ? Colors.blueAccent
                                      : Colors.white),
                              color: currentIndex == index
                                  ? Colors.white
                                  : Colors.black12),
                          duration: const Duration(microseconds: 20),
                          child: Text(tabMenus[index])),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: GridView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: price.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.6,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 2),
                        borderRadius: BorderRadius.circular(15.2)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(
                            image: NetworkImage(images[index]),
                            height: 110,
                            width: 150,

                            loadingBuilder: (context, child, ImageChunkEvent? loading){
                              if(loading==null){
                                print(loading?.expectedTotalBytes);
                                print(loading?.cumulativeBytesLoaded);
                                return child;
                              }
                              else{
                                return SizedBox(
                                  height: 110,
                                  width: 150,
                                  child: CircularProgressIndicator(
                                    value: loading.expectedTotalBytes != null ?
                                    loading.cumulativeBytesLoaded/loading.expectedTotalBytes!:null,
                                  ),
                                );
                              }
                            }
                          ),
                          const Text("Asus ROG Fashion rgb Compact keyboard"),
                          Text(
                            price[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0))),
                                  iconColor:
                                      MaterialStateProperty.all(Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue)),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        action: SnackBarAction(
                                          label: 'Ok',
                                          onPressed: () {},
                                        ),
                                        content: Text("Selected item price " +
                                            price[index])));
                              },
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.add_shopping_cart_outlined),
                                  Text(
                                    "Add to cart",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
