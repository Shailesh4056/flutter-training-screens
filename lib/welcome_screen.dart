import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test/generated/assets.dart';
import 'package:surprise_test/home_screen.dart';
import 'package:surprise_test/models/colors.dart';

import 'items_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 932.h,
            decoration:  const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Assets.imagesWelcomeScreen),
                    fit: BoxFit.cover)),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: 508.14.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.r),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white10,
                        Colors.black54,
                        Colors.black87,
                        Colors.black87,
                      ]),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 219.72.h,
                    ),
                  RichText(text: TextSpan(
                      text: "E",
                      style: TextStyle(fontFamily: 'montserrat',fontWeight: FontWeight.w400,fontSize: 64.sp,color: AppColors.pink),
                      children: [

                        TextSpan(
                          text: "Destinationer",
                          style: TextStyle(fontFamily: 'montserrat',fontWeight: FontWeight.w800,fontSize: 38.sp,color: AppColors.white),
                        )
                      ]
                  )),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 87.w),
                      child: Text("Where dreams meet horizons, and every step is an adventure.",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 14.sp,color: AppColors.white)),
                    ),
                    SizedBox(
                      height: 21.h,
                    ),
                    SizedBox(
                      height: 40.h,
                        width: 280.w,
                        child: ElevatedButton(style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.pink)
                        ),onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ItemsScreen(),));
                        }, child: Text("Sign Up",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 18.sp,color: AppColors.white)))),
                    SizedBox(
                      height: 21.h,
                    ),
                    SizedBox(
                        height: 40.h,
                        width: 280.w,
                        child: ElevatedButton(style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(AppColors.pink)
                        ),onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        }, child: Text("LOGIN",style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w600,fontSize: 18.sp,color: AppColors.white)))),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
