import 'package:flutter/material.dart';
import 'package:march_1_tasks/app_colors.dart';

class ScreenFour extends StatefulWidget {
  const ScreenFour({super.key});

  @override
  State<ScreenFour> createState() => _ScreenFourState();
}

class _ScreenFourState extends State<ScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors().blue,
        title:  Text("TextField FirstApp",style: TextStyle(color: AppColors().white)),
      ),
      body: Center(
        child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.08,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        label: Text("Your User Name"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                        )
                      ),
                    ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.06,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.8,
                    child: TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Password",
                            label: Text("Your Password",style: TextStyle(color: AppColors().blue),),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        )
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.04,
                  ),
                  MaterialButton( color: AppColors().black,onPressed: (){},child: Text("Sign in",style: TextStyle(color: AppColors().white),)),
                ],
              )
      ),
    );
  }
}
