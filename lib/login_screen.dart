import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/generated/assets.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:march_27_tasks/model/validation.dart';
import 'package:march_27_tasks/varification_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                151.verticalSpace,
                Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: const AssetImage(Assets.imagesLogoLoginpahe),
                      height: 118.h,
                      width: 117.w,
                    )),
                21.verticalSpace,
                Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Huge Basket",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    )),
                45.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 39.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: _controllerPhone,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) {
                          if (value == "" && value!.isEmpty) {
                            return "Enter a number";
                          } else if (value!.isValidPhone) {
                            return "enter a valid phone number";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.r),
                                borderSide: BorderSide.none),
                            hintText: "Phone Number",
                            fillColor: Colors.grey.withOpacity(0.3),
                            filled: true,
                            prefixIcon: SizedBox(
                              width: 80.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CountryCodePicker(
                                    onChanged: print,
                                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                    initialSelection: 'IT',
                                    favorite: ['+91', 'ind'],
                                    // optional. Shows only country name and flag
                                    showCountryOnly: false,
                                    showFlag: false,
                                    // optional. Shows only country name and flag when popup is closed.
                                    showOnlyCountryWhenClosed: false,
                                    // optional. aligns the flag and the Text left
                                    alignLeft: false,
                                  ),
                                  Container(
                                    width: 2,
                                    height: 30,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )),
                      ),
                      12.verticalSpace,
                      SizedBox(
                          height: 52.h,
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green)),
                              onPressed: () {
                                if(formKey.currentState!.validate()){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const VerificationScreen(),));
                                }
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.sp),
                              )))
                    ],
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
