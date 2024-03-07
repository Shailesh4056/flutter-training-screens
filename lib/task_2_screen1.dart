import 'package:flutter/material.dart';

import 'custom_textfield.dart';

final List<String> country = [
  'india',
  'Usa',
  'Russia',
  'Afghanistan',
  'new zealand'
];
final List<String> state = [
  'State',
  'Rajasthan',
  'Gujarat',
  'Punjab',
  'Up',
  'Mp'
];

class TaskTwoScreenOne extends StatefulWidget {
  const TaskTwoScreenOne({super.key});

  @override
  State<TaskTwoScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<TaskTwoScreenOne> {
  /// drop down menus variables
  String defaultCountry = country.first;
  String defaultState = state.first;

  ///text form controllers
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPhone = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerAge = TextEditingController();
  final TextEditingController _controllerAddress = TextEditingController();
  final TextEditingController _controllerDob = TextEditingController();
  void datePicker() async {
    DateTime? dateTime = await showDatePicker(
        context: context, firstDate: DateTime(2021), lastDate: DateTime(2025));
    if (dateTime != null) {
      _controllerDob.text = dateTime.toString().split(" ")[0];
    }
  }

  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _keyForm,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomTextField(
                      textInputAction: TextInputAction.next,
                      controllerName: _controllerName,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.text,
                      hintText: "Name",
                      label: "Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter Some Text";
                        }
                      },
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    CustomTextField(
                        textInputAction: TextInputAction.next,
                        controllerName: _controllerPhone,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        keyboardType: TextInputType.phone,
                        hintText: "Phone Number",
                        label: "Phone Number",
                        validator: (value) {
                          if (value == "" || value!.isEmpty) {
                            return "Enter Some text";
                          } else if (!RegExp(r'^(?:[+0]9)?[0-9]{10}$')
                              .hasMatch(value)) {
                            return "Enter a valid number";
                          }
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    CustomTextField(
                        textInputAction: TextInputAction.next,
                      controllerName: _controllerEmail,
                      keyboardType: TextInputType.emailAddress,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      label: "Email",
                   hintText: "Email",
                      validator: (value) {
                        if (value == "" || value!.isEmpty) {
                          return "Enter Email here";
                        } else if (!RegExp(
                            r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$')
                            .hasMatch(value)) {
                          return "Enter a valid Email";
                        }
                      }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    CustomTextField(
                      textInputAction: TextInputAction.next,
                      controllerName: _controllerAge,
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      label: "Age",
                      hintText: "Age",
                      validator: (value) {
                        if (value == "" || value!.isEmpty) {
                          return "Enter Some text";
                        } else if (!RegExp(r'^\d{2}$').hasMatch(value)) {
                          return "Enter a valid age";
                        }
                      },),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),

                  CustomTextField(
                    textInputAction: TextInputAction.done,
                    controllerName: _controllerAddress,
                    keyboardType: TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    label: "Address",
                    hintText: "Address",
                    validator: (value) {
                      if (value == "" || value!.isEmpty) {
                        return "Enter Some text";
                      }
                    },),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      keyboardType: TextInputType.none,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a valid DOB";
                        }
                      },
                      controller: _controllerDob,
                      onTap: () {
                        setState(() {
                          datePicker();
                        });
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.calendar_month_outlined),
                          hintText: "DOB",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DropdownButtonFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: InputDecoration(
                          hintText: "Select Country",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        borderRadius: BorderRadius.circular(30),
                        items: country.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            alignment: Alignment.topCenter,
                            child: Text(value),
                          );
                        }).toList(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Select a valid country";
                          }
                        },
                        onChanged: (newValue) {}),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DropdownButtonFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Select a valid State";
                          }
                        },
                        decoration: InputDecoration(
                            hintText: "Select State",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                        borderRadius: BorderRadius.circular(30),
                        items: state
                            .map((String e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            defaultState = newValue!;
                          });
                        }),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    MaterialButton(
                        textColor: Colors.white,
                        height: MediaQuery.of(context).size.height * 0.07,
                        minWidth: MediaQuery.of(context).size.width * 1,
                        color: Colors.blue,
                        onPressed: () {
                          setState(() {
                            _keyForm.currentState?.validate();
                          });
                        },
                        child: const Text("Submit"))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
