import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAge = TextEditingController();
  final TextEditingController _controllerAddress = TextEditingController();
  void allData(){
    print(_controllerName);
    print(_controllerPhone);
    print(_controllerEmail);
    print(_controllerAge);
  }

  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    allData();
    return Scaffold(
      body: Form(
        key: _keyForm,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: _controllerName,
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "Enter Some text";
                      }
                    },
                    decoration: InputDecoration(
                        label: const Text("Name"),
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    controller: _controllerPhone,
                    keyboardType: TextInputType.phone,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "Enter Some text";
                      }
                      else if(!RegExp(r'^(?:[+0]9)?[0-9]{10}$').hasMatch(value)){
                        return "Enter a valid number";
                      }
                    },
                    decoration: InputDecoration(
                      label: const Text("Phone Number"),
                      hintText: "Phone Number",
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "Enter Email here";
                      }
                      else if(!RegExp(r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$').hasMatch(value)){
                        return "Enter a valid Email";
                      }
                    },
                    decoration: InputDecoration(
                        label: const Text("Email"),
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    controller: _controllerAge,
                    keyboardType: TextInputType.number,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "Enter Some text";
                      }
                      else if(!RegExp(r'^\d{2}$').hasMatch(value)){
                       return "Enter a valid age";
                      }
                    },
                    decoration: InputDecoration(
                        label: const Text("Age"),
                        hintText: "Age",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    controller: _controllerAddress,
                    keyboardType: TextInputType.streetAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "Enter Some text";
                      }
                    },
                    decoration: InputDecoration(
                        label: const Text("Address"),
                        hintText: "Address",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  TextFormField(
                    onTap: () async{
                      DateTime? dateTime = await showDatePicker(context: context,
                          firstDate: DateTime(2021), lastDate: DateTime(2025));
                    },
                    decoration: InputDecoration(
                        label: const Text("DOB ${}"),
                        hintText: "DOB",
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(30),
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
