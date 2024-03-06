import 'package:flutter/material.dart';
import 'package:march_2_tasks/task_1_screen3.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
        height: MediaQuery.of(context).size.height*1,
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              const Text("Welcome Back",
                  style:
                  TextStyle(fontWeight: FontWeight.w800, fontSize: 40)),
              const Text("Enter your credential to login"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              TextFormField(
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a valid details";
                  }
                },
                decoration: InputDecoration(
                    hintText: "Username",
                    label: const Text("Username"),
                    prefixIcon: const Icon(Icons.account_circle),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              TextFormField(
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter a valid Password";
                  }
                },
                decoration: InputDecoration(
                    hintText: "Password",
                    label: const Text("Password"),
                    prefixIcon: const Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple)),
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Processing Data")));
                        }
                      });
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: Colors.purple, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account? "),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ScreenThree(),));
                    },
                    child: const Text("Sign Up",
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
