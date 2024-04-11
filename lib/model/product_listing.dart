import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../custom_fields.dart';
import 'colors.dart';
import 'data_list.dart';
class ProductListing extends StatefulWidget {
  const ProductListing({super.key});

  @override
  State<ProductListing> createState() => _ProductListingState();
}
class _ProductListingState extends State<ProductListing> {
  @override
  Widget build(BuildContext context) {
    List milkItems =  ModalRoute.of(context)!.settings.arguments as List;
    print(milkItems.length);

    return Scaffold(
      appBar: PreferredSize(preferredSize: Size(double.infinity, 56.h),child: CustomAppBar().customAppBar("milk",Icons.shopping_cart)),
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          child: GridView.builder(itemCount: milkItems.length,gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,
              crossAxisSpacing: 10,mainAxisSpacing: 10,mainAxisExtent: MediaQuery.of(context).size.height*0.22),
            itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                        horizontal: 5.w, vertical: 0.h),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10.r),
                      border:
                      Border.all(width: 2.w, color: Colors.transparent),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.lightGray,
                          blurRadius: 10.r,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Image(
                              image: NetworkImage(
                                  milkItems[index].image),
                              height: 70.h,
                              width: 70.w,
                            ),
                            15.verticalSpace,
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  milkItems[index].price,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                                Text(
                                  milkItems[index].weight,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                            5.verticalSpace,
                            Text(
                              milkItems[index].description,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 15.sp),
                            )
                          ],
                        ),
                        Positioned(
                          right: 0,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                // Toggle the opened state of the current item
                                milkItems[index].openedStates =
                                !milkItems[index].openedStates;
                              });
                            },
                            child: DottedBorder(
                              color: AppColors.green,
                              borderType: BorderType.RRect,
                              dashPattern: [3, 8],
                              strokeCap: StrokeCap.butt,
                              strokeWidth: 1.w,
                              borderPadding: EdgeInsets.all(2.0),
                              padding: EdgeInsets.all(2.0),
                              radius: Radius.circular(20.r),
                              child: AnimatedContainer(
                                decoration: BoxDecoration(
                                  color: milkItems[index].openedStates
                                      ? AppColors.green.withOpacity(0.1)
                                      : AppColors.white,
                                  border: milkItems[index].openedStates
                                      ? Border.all(
                                      width: 0,
                                      color: Colors.transparent)
                                      : Border.all(
                                      width: 2,
                                      color: AppColors.green),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(50.r)),
                                ),
                                duration: const Duration(milliseconds: 0),
                                padding: EdgeInsets.symmetric(
                                    vertical: 3.h, horizontal: 3.w),
                                alignment: Alignment.center,
                                child: milkItems[index].openedStates
                                    ? Icon(
                                  Icons.add,
                                  color: AppColors.green,
                                )
                                    : Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          milkItems[index].itemCount.value++;
                                          milkItems[index].itemCount.notifyListeners();
                                              print(milkItems[index].itemCount.value);
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: AppColors.black,
                                          size: 20.h,
                                        ),
                                      ),
                                      ValueListenableBuilder(
                                        valueListenable:milkItems[index].itemCount ,builder:(context, value, child) => Text(
                                        milkItems[index].itemCount.value.toString(),
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.sp,
                                            fontWeight:
                                            FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            if (milkItems[index].itemCount.value >0) {
                                              milkItems[index].itemCount.value--;
                                              milkItems[index].itemCount.notifyListeners();
                                            } else if (milkItems[index].itemCount.value == 0) {
                                              milkItems[index].openedStates =
                                              true;
                                            }
                                          });
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: AppColors.red,
                                          size: 14.h,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        ),
    );
  }
}
