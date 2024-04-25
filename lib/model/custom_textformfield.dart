import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test2/model/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  String? Function(String? value) validator;
  String hintText;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  TextEditingController controller;
  IconData? suffixIcon;
  String labelText;
  CustomTextFormField(
      {super.key,
        required this.validator,
        required this.hintText,
        required this.keyboardType,
        required this.textInputAction,required this.controller,this.suffixIcon,required this.labelText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        suffixIcon: Icon(suffixIcon),
        fillColor: AppColors.white,
        filled: true,
        hintText: hintText,
        label: Text(labelText),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r),
          borderSide: BorderSide(width: 1.w,color: AppColors.whiteSmoke),
        ),
      ),
      validator: validator,
    );
  }
}
