import 'package:fab20_tasks/generated/assets.dart';
import 'package:flutter/material.dart';

class RestaurantHomeScreen extends StatefulWidget {
  const RestaurantHomeScreen({super.key});

  @override
  State<RestaurantHomeScreen> createState() => _RestaurantHomeScreenState();
}

class _RestaurantHomeScreenState extends State<RestaurantHomeScreen> {
  List<String> images = [Assets.imagesFoodimage1,Assets.imagesFoodimage2,Assets.imagesFoodimage3,Assets.imagesFoodimage4,Assets.imagesFoodimage5
    ,Assets.imagesFoodimage6,Assets.imagesFoodimage7,Assets.imagesFoodimage8];
  ///food name screen
    List<String> foodNames = ['ice cream','Burger','Combo','ColdDrink','Pizza',
    'Pizza','thali','Sweet'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        shadowColor: Colors.black,
        title: const Text("Restaurant Menu",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black38,
        actions: const [
          Padding(
            padding:  EdgeInsets.only(right: 15),
            child: Icon(Icons.menu,color: Colors.white,),
          )
        ],

      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: images.length,itemBuilder: (BuildContext context, int index){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage(images[index]),fit: BoxFit.cover,
                        )
                      )),
                      ),
                      Text(foodNames[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white)),
                ],
              );
            }),
          ),
          Expanded(
              child:ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: images.length,itemBuilder: (BuildContext context, int index){
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: 150,
                      width: 340,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(color: Colors.red)],
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Colors.black,
                            width: 0.0,
                          ),
                          image: DecorationImage(
                            image: AssetImage(images[index]),fit: BoxFit.cover,
                          )
                      )),
                ),
               const  Padding(
                  padding:  EdgeInsets.only(left: 80,right: 50,top: 10,bottom: 10),
                  child: Text("Food is a substance that provides energy and nutritional support to an organism. It can be raw, processed, or formulated, and is consumed by animals for health, growth, or pleasure. Food is mainly made up of water, lipids, proteins, and carbohydrates"
                      ,style:  TextStyle(fontSize: 15,color: Colors.white)),
                ),
              ],
            );
          }))
        ],
      ),
    );
  }
}
