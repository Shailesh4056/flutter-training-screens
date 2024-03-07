import 'package:flutter/material.dart';
import 'package:march_2_tasks/task_1_screen2.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.04,
            right: MediaQuery.of(context).size.height * 0.04),
        height: MediaQuery.of(context).size.height * 1,
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              const Text("Sign up",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 30)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text("Create your account"),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a valid details";
                  }
                  return "Done";
                },
                decoration: InputDecoration(
                    hintText: "Username",
                    label: const Text("Username"),
                    prefixIcon: const Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter a valid Password";
                  }
                },
                decoration: InputDecoration(
                    hintText: "Email",
                    label: const Text("Email"),
                    prefixIcon: const Icon(Icons.email_rounded),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              TextFormField(
                autovalidateMode:AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please Enter a valid Password";
                  }
                },
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    label: const Text("Confirm Password"),
                    prefixIcon: const Icon(Icons.password),
                    filled: true,
                    fillColor: Colors.purple.shade50,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
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
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Processing Data")));
                        }
                      });
                    },
                    child:  const Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              const Text(
                "Or",
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 1,
                child: ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.purple, width: 2))),
                    onPressed: () {},
                    child: const Text(
                      "Sign in with Google",
                      style: TextStyle(color: Colors.purple, fontSize: 18),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenTwo(),
                          ));
                    },
                    child: const Text("Login",
                        style: TextStyle(
                            color: Colors.purple, fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
    ;
  }
}
