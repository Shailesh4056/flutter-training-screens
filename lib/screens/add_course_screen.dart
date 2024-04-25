import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:surprise_test2/model/app_colors.dart';
import 'package:surprise_test2/model/validaton.dart';
import '../model/custom_textformfield.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({super.key});

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  File? imagePath;
  Future pickImageFromGallery() async {
    final imageAddress =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (imageAddress == null) {
      return;
    }
    setState(() {
      imagePath = File(imageAddress!.path);
      Navigator.pop(context);
    });
  }

  Future pickImageFromCamera() async {
    final imageAddress =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (imageAddress == null) {
      return;
    }
    setState(() {
      imagePath = File(imageAddress!.path);
      Navigator.pop(context);
    });
  }

  final formKey = GlobalKey<FormState>();
  final TextEditingController controllerCarName = TextEditingController();
  final TextEditingController controllerCityName = TextEditingController();
  final TextEditingController controllerCountryName = TextEditingController();
  final TextEditingController controllerPrice = TextEditingController();

  void saveCarDetails() async {
    String? key = 'carDetails';
    if (key != null) {
      var box = await Hive.openBox('cars_data');
      List<Map<dynamic, dynamic>>? addressDetails =
          box.get(key)?.cast<Map<dynamic, dynamic>>();
      addressDetails = addressDetails ?? [];

      addressDetails.add({
        'carName': controllerCarName.text,
        'cityName': controllerCityName.text,
        'countryName': controllerCountryName.text,
        'price': controllerPrice.text,
        'imagePath': imagePath?.path,
      });

      box.put(key, addressDetails);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteSmoke,
        appBar: AppBar(
          title: Text("Add Course",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500)),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_outlined),
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => showDialog(
                      context: context,
                      barrierDismissible: true,
                      builder: (context) {
                        return Theme(
                          data: ThemeData(useMaterial3: false),
                          child: AlertDialog(
                            titlePadding: EdgeInsets.only(left: 0,right: 0,top: 30.h),

                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                10.horizontalSpace,
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child:  Text("Add Photo!", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.sp,color: AppColors.deepSkyBlue)),
                                ),
                                10.verticalSpace,
                                Container(
                                  height: 2.h,
                                  decoration: BoxDecoration(
                                    color: AppColors.deepSkyBlue,
                                  ),
                                )
                              ],
                            ),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: [
                                  ListTile(
                                    onTap: () {
                                      pickImageFromCamera();
                                    },
                                    title: Text("Take Picture",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.sp)),
                                  ),
                                  Divider(),
                                  ListTile(
                                    onTap: () {
                                      pickImageFromGallery();
                                    },
                                    title: Text("Choose from Gallery",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.sp)),
                                  ),
                                  const Divider(),
                                  ListTile(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    title: Text("Cancel",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20.sp)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    child: imagePath == null
                        ? Container(
                            margin: EdgeInsets.symmetric(vertical: 38.h),
                            padding: EdgeInsets.symmetric(
                                vertical: 54.h, horizontal: 110.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.image_outlined,
                                  color: AppColors.shadeBlueGray,
                                ),
                                5.verticalSpace,
                                Text(
                                  "Add",
                                  style:
                                      TextStyle(color: AppColors.shadeBlueGray),
                                ),
                                Text(
                                  "Image",
                                  style:
                                  TextStyle(color: AppColors.shadeBlueGray),
                                )
                              ],
                            ))
                        : Container(
                            margin: EdgeInsets.symmetric(vertical: 38.h),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Image.file(
                              imagePath!,
                              height: 175.h,
                              width: 285.w,
                              fit: BoxFit.fill,
                            ),
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 38.h),
                    padding:
                        EdgeInsets.symmetric(vertical: 25.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Column(
                      children: [
                        CustomTextFormField(
                          validator: (value) {
                            if (value == "" || value!.isEmpty) {
                              return "Please Enter Car Name";
                            }
                            return null;
                          },
                          hintText: "Enter Car Name",
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: controllerCarName,
                          labelText: 'Car Name',
                        ),
                        20.verticalSpace,
                        CustomTextFormField(
                          validator: (value) {
                            if (value == "" || value!.isEmpty) {
                              return "Please Enter City Name";
                            }
                            return null;
                          },
                          hintText: "Enter City Name",
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: controllerCityName,
                          labelText: 'City',
                        ),
                        20.verticalSpace,
                        CustomTextFormField(
                          validator: (value) {
                            if (value == "" || value!.isEmpty) {
                              return "Please Enter Country Name";
                            }
                            return null;
                          },
                          hintText: "Enter Country Name",
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          controller: controllerCountryName,
                          labelText: 'Country',
                        ),
                        20.verticalSpace,
                        CustomTextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter Price";
                            }
                            return null;
                          },
                          hintText: "Enter Price",
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          controller: controllerPrice,
                          labelText: 'Price',
                        ),
                        50.verticalSpace,
                        SizedBox(
                          height: 46.h,
                          width: 1.sw,
                          child: ElevatedButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                saveCarDetails();
                                Navigator.pushNamed(context, '/');
                              }
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.fernGreen)),
                            child: Text(
                              "Add Carce",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
