import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/custom_fields.dart';
import 'package:march_27_tasks/model/colors.dart';

import 'model/data_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void navigateNextPage(BuildContext context,int index){
    Navigator.pushNamed(context, '/store_details',arguments: index);
  }
  @override
  Widget build(BuildContext context) {
    Future waitingConnection() async {
     await Future.delayed(const Duration(seconds:5));
    }

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size(1.sw,54.h),child: CustomAppBar().customAppBar("Huge Basket")),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: 1.sw,
              height: 53.h,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: AppColors.green.withOpacity(0.1))]
              ),
              child: Text("Next delivery on Wed, 14 Nov 2020",textAlign: TextAlign.left,style: TextStyle(color: AppColors.green,fontSize: 15.sp,fontWeight: FontWeight.w700),),
            ),
            Expanded(
              child: FutureBuilder(
                future: waitingConnection(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      alignment: Alignment.center,
                      child:  CircularProgressIndicator(
                        strokeWidth: 6,
                        color: Colors.red,
                        strokeAlign: 2,
                        backgroundColor: AppColors.lightGray,

                      ),
                    );
                  }
                  else if (snapshot.hasError) {
                    return Text(snapshot.hasError.toString());
                  }
                  else {
                    return ListView.builder(
                      itemCount: ListOfData().storeDetails.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/store_details', arguments: index);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.r),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.grey, blurRadius: 10)
                                ]
                            ),
                            width: 1.sw,
                            margin: EdgeInsets.only(
                                left: 20.w, right: 20.w, bottom: 20.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 5.h),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 6.h),
                                        child: CircleAvatar(
                                            radius: 35,
                                            backgroundImage: NetworkImage(
                                                ListOfData()
                                                    .storeDetails[index]['imageUrl']))),
                                    Positioned(
                                      left: 20.w,
                                      bottom: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2.w),
                                        decoration: BoxDecoration(
                                            color: AppColors.green,
                                            borderRadius: BorderRadius
                                                .circular(10.r)),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceAround,
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              weight: 8.5,
                                              size: 8.5,
                                            ),
                                            Text(
                                              ListOfData()
                                                  .storeDetails[index]['rank'],
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 8.sp),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.w, top: 15.h, bottom: 15.h),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Text(ListOfData()
                                                .storeDetails[index]['title'],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 15.sp,
                                                  fontWeight: FontWeight
                                                      .w500),),

                                            const Spacer(),
                                            Text(ListOfData()
                                                .storeDetails[index]['mile'],
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12.sp),),
                                          ],
                                        ),
                                        Text(ListOfData()
                                            .storeDetails[index]['subtitle'],
                                          style: TextStyle(color: Colors.grey,
                                              fontSize: 10.sp),),
                                        5.verticalSpace,
                                        Text(ListOfData()
                                            .storeDetails[index]['address'],
                                          style: TextStyle(color: Colors.grey,
                                              fontSize: 10.sp),),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },);
                  }
                }
              ),
            )
          ],

        ),
       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: AppColors.green.withOpacity(0.3),
         selectedItemColor: AppColors.green,
         items: const [
           BottomNavigationBarItem(
             icon: Icon(Icons.store_sharp),
             label: "Stores",
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.library_books_sharp),
             label: "My Orders",
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.person),
             label: "Profile",
           ),
         ],
       ),
      ),
    );
  }
}
