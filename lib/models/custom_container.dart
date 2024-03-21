import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class CustomContainer extends StatefulWidget {
  EdgeInsets padding;
  List<Color> colors;
  String textValue;
  IconData icon;

   CustomContainer({super.key,required this.padding,required this.colors,required this.textValue,required this.icon});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.only(left: 20.w,right: 18.33.w),
        alignment: Alignment.center,
        height: 54.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          gradient: LinearGradient(
              colors: widget.colors

          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(widget.textValue,style: TextStyle(color: AppColors.white,fontSize: 14.sp,fontWeight: FontWeight.w500),),
            const Spacer(),
            Icon(widget.icon,color: AppColors.white,weight: 17.w,size: 20.4.h),
          ],
        )
    );
  }
}
