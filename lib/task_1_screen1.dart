import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:march_12_tasks/generated/assets.dart';
import 'task_1_screen2.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  ///form key
  final _keyForm = GlobalKey<FormState>();

  ///form controllers
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  /// password values
  bool isSecure = true;

  ///text clear key
  bool textClear = true;

  ///demo is and passwords
  String username = "shailesh2003tg@gmail.com";
  String password = "12345@Ss";

  /// massages for login Credential
  String usernameMassage = "Wrong username";
  String passwordMassage = "Wrong password";
  String bothMassage = "Wrong username and password";

  ///login Credential function
  loginCredential(usernameValue, passwordValue) {
    if (usernameValue == username && passwordValue == password) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ScreenTwo()));
    } else if (passwordValue != password) {
      passwordMassage;
    } else if (usernameValue != username) {
      usernameMassage;
    }
    else{
     return bothMassage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _keyForm,
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            margin: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://trevors.org/wp-content/uploads/2023/11/Online-Banners-Login-9.gif",
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  const Text(
                    "Login Now",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  const Text("please Enter The details below to continue"),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    enableSuggestions: true,
                    autocorrect: true,
                    controller: _controllerEmail,
                    keyboardType: TextInputType.text,
                    onChanged: (value) {
                      setState(() {
                        if (_controllerEmail.text.isEmpty) {
                          textClear = true;
                        } else {
                          textClear = false;
                        }
                      });
                    },
                    validator: (value) {
                      if (value == null || value!.isEmpty) {
                        return "Enter email";
                      } else if (!RegExp(
                              r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                          .hasMatch(value)) {
                        return "Enter a valid email";
                      }
                    },
                    decoration: InputDecoration(
                        suffixIcon: textClear
                            ? null
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    _controllerEmail.clear();
                                    textClear = true;
                                  });
                                },
                                icon: const Icon(Icons.clear)),
                        hintText: "Enter your email",
                        fillColor: Colors.black.withOpacity(0.05),
                        filled: true,

                        errorText: usernameMassage,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  TextFormField(
                    obscureText: isSecure,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    textInputAction: TextInputAction.done,
                    textAlign: TextAlign.start,
                    enableSuggestions: true,
                    validator: (value) {
                      if (value == null || value!.isEmpty) {
                        return "Enter Password";
                      } else if (!RegExp(
                              r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                          .hasMatch(value)) {
                        return "Enter a valid password";
                      }
                    },
                    controller: _controllerPassword,
                    decoration: InputDecoration(
                        errorText: passwordMassage,
                        fillColor: Colors.black.withOpacity(0.05),
                        filled: true,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isSecure = !isSecure;
                            });
                          },
                          icon: Icon(isSecure
                              ? Icons.remove_red_eye
                              : CupertinoIcons.eye_slash_fill),
                        ),
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15))),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text("Forgot Password?"))),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.pink),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)))),
                      onPressed: () {
                        if (_keyForm.currentState!.validate() == true) {
                          String usernameValue = _controllerEmail.text;
                          String passwordValue = _controllerPassword.text;
                          setState(() {
                            loginCredential(usernameValue, passwordValue);
                          });
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Text(
                        " Or Login With  ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                  )
                                ]),
                            child: const Image(
                              image: AssetImage(Assets.imagesFacebook),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                  )
                                ]),
                            child: const Image(
                              image: AssetImage(Assets.imagesGoogle),
                            )),
                      ),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(10),
                            height: MediaQuery.of(context).size.height * 0.06,
                            width: MediaQuery.of(context).size.height * 0.12,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black12),
                                borderRadius: BorderRadius.circular(5),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.white,
                                  )
                                ]),
                            child: const Image(
                              image: AssetImage(Assets.imagesAppleLogo),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {},
                          child: const Text("Register",
                              style: TextStyle(color: Colors.pink)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
