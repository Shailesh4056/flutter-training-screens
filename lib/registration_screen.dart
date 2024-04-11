import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/model/validation.dart';

import 'custom_fields.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  ///global key
  final formKey =  GlobalKey<FormState>();
  bool isCheck = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size(double.infinity,54),child: CustomAppBar().customAppBar("Add More Details",)),
      body: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 39.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.verticalSpace,
                CustomTextFormField(validator: (value) {
                  if(value =="" || value!.isEmpty){
                    return "Please Enter Business Name";
                  }
                  else if(value.isValidName){
                    return "Business Name is not valid";
                  }
                  return  "";
                }, hintText: "Business Name", keyboardType: TextInputType.text,textInputAction: TextInputAction.next,),
                15.verticalSpace,
                CustomTextFormField(validator: (value) {
                  if(value =="" || value!.isEmpty){
                    return "Please Enter first name";
                  }
                  else if(value.isValidName){
                    return "First name is not valid";
                  }
                  return  "";
                }, hintText: "First Name", keyboardType: TextInputType.text,textInputAction: TextInputAction.next,),
                15.verticalSpace,
                CustomTextFormField(validator: (value) {
                  if(value =="" || value!.isEmpty){
                    return "Please Enter Last Name";
                  }
                  else if(value.isValidName){
                    return "Last Name is not valid";
                  }
                  return  "";
                }, hintText: "Last Name", keyboardType: TextInputType.text,textInputAction: TextInputAction.next,),
                15.verticalSpace,
                CustomTextFormField(validator: (value) {
                  if(value =="" || value!.isEmpty){
                    return "Please enter email";
                  }
                  else if(value.isValidEmail){
                    return "Email address is not valid";
                  }
                  return  "";
                }, hintText: "EmailAddress", keyboardType: TextInputType.emailAddress,textInputAction: TextInputAction.next,),
                15.verticalSpace,
                TextFormField(
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
                15.verticalSpace,
                CustomTextFormField(validator: (value) {
                  if(value =="" || value!.isEmpty){
                    return "enter a valid zipcode";
                  }
                  else if(value.isValidZipCode){
                    return "ZipCode is Not valid";
                  }
                  return  "";
                }, hintText: "ZipCode", keyboardType: TextInputType.number,textInputAction: TextInputAction.done,),
                30.verticalSpace,
                Row(
                  children: [
                    Checkbox(value: isCheck, onChanged: (value){
                      setState(() {
                        isCheck = value!;
                      });
                    }),
                    RichText(text: TextSpan(
                      text:"I agree to the ",style: TextStyle(color: Colors.grey,fontSize: 15.sp),
                      children: [
                        TextSpan(
                          text: "Terms & Condition",style: TextStyle(color: Colors.green,fontSize: 15.sp),
                        ),
                      ]
                    )),
                  ],
                ),
                50.verticalSpace,
                CustomButton(buttonName: "Add", onPressed: () {
                  formKey.currentState!.validate();
                },)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
