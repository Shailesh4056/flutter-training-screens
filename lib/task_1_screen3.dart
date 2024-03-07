import 'package:flutter/material.dart';
import 'app_colors.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    filled: true,
                    fillColor: AppColors().lightBluePrime,
                    prefixIcon: Icon(
                      Icons.email_rounded,
                      color: AppColors().blue,
                    ),
                    hintText: "Username",
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 25),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: AppColors().blue,
                    ),
                    hintText: "Password",
                    filled: true,
                    fillColor: AppColors().lightBluePrime,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Icon(
                        Icons.visibility_off_rounded,
                        color: AppColors().blackPrime,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.08,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors().blue)),
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, color: AppColors().white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
