import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final _controllerText = TextEditingController();
  final _controllerEmail = TextEditingController();
  final _controllerPhone = TextEditingController();
  final _controllerStreet = TextEditingController();
  final _controllerCity = TextEditingController();

  bool _validate = false;
  bool _validate1 = false;
  bool _validate2 = false;
  bool _validate3 = false;
  bool _validate4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Flutter Forms",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              TextField(
                autocorrect: true,
                controller: _controllerText,
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: const Icon(Icons.contacts),
                  errorText: _validate ? "Please fill this field":null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9.0)
                  )
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              TextField(
                controller: _controllerEmail,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email Address",
                    errorText: _validate1 ? "Please fill this field":null,
                    prefixIcon: const Icon(Icons.email_rounded),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0)
                    )
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              TextField(
                controller: _controllerPhone,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    prefixIcon: const Icon(Icons.phone_android_outlined),
                    errorText: _validate2 ? "Please fill this field":null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0)
                    )
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              TextField(
                controller: _controllerStreet,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Street Address",
                    prefixIcon: const Icon(Icons.streetview_outlined),
                    errorText: _validate3 ? "Please fill this field":null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0)
                    )
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              TextField(
                controller: _controllerCity,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "City",
                    prefixIcon: const Icon(Icons.location_city_outlined),
                    errorText: _validate4 ? "Please fill this field":null,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9.0)
                    )
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.04,
              ),
              MaterialButton(textColor: Colors.white,color: Colors.blue,height: MediaQuery.of(context).size.height*0.08,minWidth: MediaQuery.of(context).size.width*1,onPressed: (){
                setState(() {
                  _validate = _controllerText.text.isEmpty;
                  _validate1 = _controllerEmail.text.isEmpty;
                  _validate2 = _controllerPhone.text.isEmpty;
                  _validate3 = _controllerStreet.text.isEmpty;
                  _validate4 = _controllerCity.text.isEmpty;
                });
              },child: const Text("Submit")),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              MaterialButton(textColor: Colors.white,color: Colors.blue,height: MediaQuery.of(context).size.height*0.08,minWidth: MediaQuery.of(context).size.width*1,onPressed: (){
                setState(() {
                  _controllerText.clear();
                  _controllerEmail.clear();
                  _controllerCity.clear();
                  _controllerStreet.clear();
                  _controllerCity.clear();
                });
              },child: const Text("Resat")),
            ],
          ),
        ),
      ),
    );
  }
}
