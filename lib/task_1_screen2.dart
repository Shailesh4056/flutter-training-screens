import 'package:flutter/material.dart';

enum Product { product1, product2, product3 }

List<String> dropDownMenu = ['product1', 'product2', 'product3'];

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  Product? _product;
  bool switchValue = false;

  ///check box;
  bool _isCheckedProductOne = false;
  bool _isCheckedProductTwo = false;
  bool _isCheckedProductThree = false;

  ///drop down menu
  String? defaultValue = dropDownMenu.first;
  ///global key
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {}),
        title: const Text("All Fields", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("TareaText test",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(value=="" || value!.isEmpty){
                   return "Please enter some text";
                    }
                  },
                  decoration: const InputDecoration(
                    hintText: "hola a todos",
                  ),
                  minLines: 4,
                  maxLines: 50,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                const Text("Radio Button tests",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: MediaQuery.of(context).size.height *0.29,
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text("product 1"),
                        trailing: Radio(
                          value: Product.product1,
                          groupValue: _product,
                          onChanged: (Product? value) {
                            setState(() {
                              _product = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text("product 1"),
                        trailing: Radio(
                          value: Product.product2,
                          groupValue: _product,
                          onChanged: (Product? value) {
                            setState(() {
                              _product = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text("product "),
                        trailing: Radio(
                          value: Product.product3,
                          groupValue: _product,
                          onChanged: (Product? value) {
                            setState(() {
                              _product = value!;
                            });
                          },
                        ),
                      ),
                      ListTile(
                          title: const Text("Switch Test"),
                          trailing: Switch(
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.27,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Checkbox test",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      ListTile(
                          title: const Text("product 1"),
                          trailing: Checkbox(
                            value: _isCheckedProductOne,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedProductOne = value!;
                              });
                            },
                          )),
                      ListTile(
                          title: const Text("product 1"),
                          trailing: Checkbox(
                            value: _isCheckedProductTwo,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedProductTwo = value!;
                              });
                            },
                          )),
                      ListTile(
                          title: const Text("product "),
                          trailing: Checkbox(
                            value: _isCheckedProductThree,
                            onChanged: (value) {
                              setState(() {
                                _isCheckedProductThree = value!;
                              });
                            },
                          )),
                      Row(
                        children: [
                          Text(_isCheckedProductOne
                              ? Product.product1.name
                              : ""),
                          Text(_isCheckedProductTwo
                              ? Product.product2.name
                              : ""),
                          Text(_isCheckedProductThree
                              ? Product.product3.name
                              : ""),
                        ],
                      ),
                    ],
                  ),
                ),
                const Text("Select test",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                  child: DropdownButton<String>(
                    items: dropDownMenu.map<DropdownMenuItem<String>>(
                          (String value) {
                        return DropdownMenuItem<String>(
                            value: value, child: Text(value));
                      },
                    ).toList(),
                    isExpanded: true,
                    menuMaxHeight: 300,
                    value: defaultValue,
                    onChanged: (value) {
                      setState(() {
                        defaultValue = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                MaterialButton(
                  height: MediaQuery.of(context).size.height * 0.06,
                  minWidth: MediaQuery.of(context).size.width * 1,
                  color: Colors.blue,
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    if (_product == null) {
                      setState(() {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "Please select any one radio button")));
                      });
                    }
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
