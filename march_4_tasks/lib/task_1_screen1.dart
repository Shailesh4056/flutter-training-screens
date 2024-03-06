import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final _keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios,color: Colors.white,), onPressed: () {}),
        title: const Text("Login",style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                    child: const Text("Register Form",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25))),
                const Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                  keyboardType: TextInputType.text,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if(value=="" || value!.isEmpty){
                      return "invalid user name";
                    }
                    return "done*";
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Your Name",
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "invalid user name";
                      }
                      return "done*";
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.contacts,
                          color: Colors.red,
                        ),
                        label: const Text(
                          "Enter your email",
                          style: TextStyle(color: Colors.red),
                        ),
                        focusColor: Colors.red,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.red,
                          width: 2,
                        )))),
                const Text("email", style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "invalid user name";
                      }
                      return "done*";
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.email_rounded
                        ),
                        hintText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90),
                        ))),
                const Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
                TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(value=="" || value!.isEmpty){
                        return "invalid user name";
                      }
                      return "done*";
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                            Icons.security_rounded
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                        ))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                MaterialButton(height: MediaQuery.of(context).size.height*0.06 ,minWidth: MediaQuery.of(context).size.width*1,color: Colors.blue,onPressed: (){
                  setState(() {
                    _keyForm.currentState?.validate();
                  });
                },child: Text("Register",style: TextStyle(color: Colors.white),),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
