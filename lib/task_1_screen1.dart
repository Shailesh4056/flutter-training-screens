import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

List<String> state = ['Bihar', 'Chhattisgarh', 'Goa', 'Gujarat', 'Haryana'];
String? defaultValue;
List<String> city = ['Ahmedabad', 'Surat', 'Rajkot', 'Vadodara', 'Bhavnagar '];

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  TextEditingController _controllerSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: const Text(
          "Choose Location",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40,left: 30,right: 30),
              child: Column(
                children: [
                  DropdownSearch<dynamic>(
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                    ),
                    dropdownButtonProps: DropdownButtonProps(
                    ),
                    selectedItem:defaultValue ,
                    items: state,
                    onChanged: (newValue){
                      defaultValue = newValue!;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  DropdownSearch<dynamic>(
                    popupProps: PopupProps.menu(
                      showSearchBox: true,
                    ),
                    selectedItem:defaultValue ,
                    items: city,
                    onChanged: (newValue){
                      defaultValue = newValue!;
                    },

                  ),
                ],
              ),
            )
        
                ],
              ),

      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width*1,
          color: Colors.teal,
          child: const Text("Next",style: TextStyle(color: Colors.white),),
          onPressed: (){

          },
        ),
      ),
    );
  }
}
