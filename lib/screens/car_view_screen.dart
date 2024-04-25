import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:surprise_test2/model/app_colors.dart';

class MyCars extends StatefulWidget {
  const MyCars({super.key});

  @override
  State<MyCars> createState() => _MyCarsState();
}

class _MyCarsState extends State<MyCars> {


  Future<List<Map<dynamic, dynamic>>?> getUserAddresses() async {
    String? key = 'carDetails';
    var box = await Hive.openBox('cars_data');

    List<dynamic>? carData = await box.get(key);
    // debugPrint(addresses.toString());
    if (carData != null) {
      List<Map<dynamic, dynamic>> convertedAddresses =
      carData.cast<Map<dynamic, dynamic>>().toList();
      return convertedAddresses;
    } else {
      return null;
    }
  }

  List<Map<dynamic, dynamic>>? carData;

  Future <void> _fetchUserAddresses() async {
    List<Map<dynamic, dynamic>>? addresses = await getUserAddresses();
    if (addresses != null) {
      setState(() {
        carData = addresses;

      });
    } else {
      return debugPrint('No user data found for phoneNo: ');
    }
  }

  @override
  void initState() {
    _fetchUserAddresses();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkShadeBlack,
      appBar: AppBar(
        backgroundColor: AppColors.darkShadeBlack,
        title: Text("My Cars",style: TextStyle(color: AppColors.white),),
        actions: [
          IconButton(icon:Icon(Icons.add,color: AppColors.fernGreen,size: 35.h,),onPressed: (){
            Navigator.pushNamed(context, '/addCarData');
          },)
        ],
      ),
      body: FutureBuilder(
        future: _fetchUserAddresses(),
        builder: (context, snapshot) {
          return ListView.builder(padding: EdgeInsets.all(20.h),itemCount:carData?.length ?? 0 ,itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                    borderRadius: BorderRadius.circular(15.r)
              ),
              padding: EdgeInsets.all(15.h),
              margin: EdgeInsets.only(bottom: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${carData![index]['carName']}",style: TextStyle(color: AppColors.fernGreen,fontSize: 12.sp,fontWeight: FontWeight.w400,)),
                  6.verticalSpace,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${carData![index]['cityName']},${carData![index]['countryName']}",style: TextStyle(color: AppColors.fernGreen,fontSize: 12.sp,fontWeight: FontWeight.w400,)),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(
                            text: "\$${carData![index]['price']}",
                            style: TextStyle(color: AppColors.fernGreen,fontSize: 16.sp,fontWeight: FontWeight.w700,)
                          ),
                          TextSpan(
                              text: "/days",
                              style: TextStyle(color: AppColors.fernGreen,fontSize: 12.sp,fontWeight: FontWeight.w400,)
                          ),
                        ]
                      ))
                    ],
                  ),
                  10.verticalSpace,
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.r),
                    child:  Image.file(File(carData![index]['imagePath']),height: 125.h,width: 1.sw,fit: BoxFit.fitWidth),
                  )
                ],
              ),
            );
          },);
        }
      ),
    );
  }
}
