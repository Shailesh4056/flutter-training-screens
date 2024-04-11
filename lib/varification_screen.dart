import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/model/colors.dart';
import 'custom_fields.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});
  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController controllerFirstOtp = TextEditingController();
  TextEditingController controllerSecondOtp = TextEditingController();
  TextEditingController controllerThirdOtp = TextEditingController();
  TextEditingController controllerForthOtp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formKey,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(double.infinity, 54.h),
              child: CustomAppBar().customAppBar("Veification Code",
              )),
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            dragStartBehavior: DragStartBehavior.start,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 42.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  84.verticalSpace,
                  Text(
                    "Verification code has been send on your registered mobile number. Enter Verification code here.",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style:
                        TextStyle(fontWeight: FontWeight.w900, fontSize: 16.sp),
                  ),
                  27.verticalSpace,
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        controller: controllerFirstOtp,
                        validator: (value) {
                          if (value!.isEmpty) {}
                          return null;
                        },
                      ),
                      CustomTextFormField(
                        controller: controllerSecondOtp,
                        validator: (value) {
                          if (value!.isEmpty) {}
                          return null;
                        },
                      ),
                      CustomTextFormField(
                        controller: controllerThirdOtp,
                        validator: (value) {
                          if (value!.isEmpty) {}
                          return null;
                        },
                      ),
                      CustomTextFormField(
                        controller: controllerForthOtp,
                        validator: (value) {
                          if (value!.isEmpty) {}
                          return null;
                        },
                      ),
                    ],
                  ),
                  79.verticalSpace,
                  SizedBox(
                    height: 52.h,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(AppColors.green)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("ok");
                          Navigator.pushNamed(context, '/home');
                        } else {
                          print("NotOk");
                          const snackBar = SnackBar(
                            content: Text("Please Enter a valid otp"),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Text(
                        "Verify",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  41.verticalSpace,
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Resend Code",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14.sp,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                  60.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatefulWidget {
  String? Function(String? value) validator;
  TextEditingController controller;
  CustomTextFormField(
      {super.key, required this.validator, required this.controller});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 10.w),
        alignment: Alignment.center,
        child: TextFormField(
          controller: widget.controller,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else if (value.isEmpty) {
              FocusScope.of(context).previousFocus();
            }
          },
          textAlign: TextAlign.center,
          cursorWidth: 2,
          enableInteractiveSelection: true,
          maxLength: 1,
          style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration:  InputDecoration(
            fillColor: Colors.grey.withOpacity(0.1),
            filled: true,
            alignLabelWithHint: true,
            hintText: '_',
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
            counter: const SizedBox.shrink(),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(90.r),
              borderSide: BorderSide.none
            ),
          ),
          validator: widget.validator,
        ),
      ),
      );
  }
}
