import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test/generated/assets.dart';
import 'package:surprise_test/models/colors.dart';

import 'home_screen.dart';
import 'models/custom_bottom_bar.dart';
import 'models/custom_container.dart';

class ItemsScreen extends StatefulWidget {
  const ItemsScreen({super.key});

  @override
  State<ItemsScreen> createState() => _ItemsScreenState();
}

class _ItemsScreenState extends State<ItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    spreadRadius: 1,
                    color: AppColors.lightBlack.withOpacity(0.2))
              ]),
              height: 77.h,
              child: Row(
                children: [
                  const CircleAvatar(
                    child: Image(
                      image: AssetImage(Assets.imagesEllipse),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "John Smith",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp),
                      ),
                      SizedBox(
                        width: 50.w,
                      ),
                      Row(
                        children: [
                          Image(
                            image: const AssetImage(Assets.imagesWallet),
                            width: 18.w,
                            height: 18.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "\$ 8,103.81",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp),
                          ),
                        ],
                      )
                    ],
                  ),
          const Spacer(),
                  Image(
                    image: const AssetImage(Assets.images23CalendarOutline),
                    width: 36.w,
                    height: 42.h,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image(
                    image: const AssetImage(Assets.imagesLion),
                    width: 42.w,
                    height: 42.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 55.h,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                color: AppColors.lightBlack.withOpacity(0.2))
                          ]),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 9.h,
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: const AssetImage(Assets.imagesLocation),
                                    width: 14.w,
                                    height: 10.5.h,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "Select Current City",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 10.sp),
                                  ),
                                ],
                              ),
                              Text(
                                "Ahmedabad",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp),
                              )
                            ],
                          ),
                          const Spacer(),
                          Image(
                            image: const AssetImage(Assets.imagesEditicon),
                            width: 19.88.w,
                            height: 18.h,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20.w, right: 18.33.w),
                        alignment: Alignment.center,
                        height: 54.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          gradient: LinearGradient(colors: [
                            AppColors.lightYellow,
                            AppColors.darkYellow,
                          ]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Select Avalibility",
                              style: TextStyle(
                                  color: AppColors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            const Spacer(),
                            Icon(Icons.arrow_forward,
                                color: AppColors.white,
                                weight: 17.w,
                                size: 20.4.h)
                          ],
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomContainer(
                      padding: EdgeInsets.only(left: 10.w, right: 15.w),
                      colors: [
                        AppColors.lightPink,
                        AppColors.red,
                      ],
                      textValue: "Nomination Request",
                      icon: Icons.arrow_forward,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 59.h,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [AppColors.purple, AppColors.lightPurple]),
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              9.verticalSpace,
                              Text(
                                "Player Auction",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.sp),
                              ),
                              Text(
                                "Commission & GST applicable",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.sp),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            "RS. 3000",
                            style: TextStyle(
                                color: AppColors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 20.w, right: 18.33.w),
                        alignment: Alignment.center,
                        height: 139.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          gradient: LinearGradient(colors: [
                            AppColors.lightPink,
                            AppColors.red,
                          ]),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "Current Team",
                                  style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 19.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30.r,
                                      backgroundColor: AppColors.white,
                                      child: Image(
                                        image: const AssetImage(
                                            Assets.imagesGreencircle),
                                        width: 38.w,
                                        height: 26.61.h,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Team Name 10",
                                          style: TextStyle(
                                              color: AppColors.white,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: const AssetImage(
                                                  Assets.imagesVector),
                                              width: 8.96.w,
                                              height: 12.h,
                                            ),
                                            Text("245 Match",
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image(
                                              image: const AssetImage(
                                                  Assets.imagesTrofi),
                                              width: 8.96.w,
                                              height: 12.h,
                                            ),
                                            Text("89 Win",
                                                style: TextStyle(
                                                    color: AppColors.white,
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w400)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const Spacer(),
                            Image(
                              image: const AssetImage(Assets.imagesCounter),
                              height: 66.h,
                              width: 90.w,
                            )
                          ],
                        )),
                    SizedBox(
                      height: 36.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Team  Members",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(height: 11.h),
                    SizedBox(
                      height: 78.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) => Column(
                          children: [
                            3.verticalSpace,
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              padding: EdgeInsets.only(left: 5.w, right: 12.w),
                              height: 68.h,
                              width: 194.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.r),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            AppColors.lightBlack.withOpacity(0.8),
                                        blurRadius: 2)
                                  ]),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                       CircleAvatar(
                                         radius: 15.r,
                                        child: Image(
                                          image: AssetImage(Assets.imagesEllipse),width: 45.w,height: 45.h,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Ivan Polo",
                                            style: TextStyle(
                                                color: AppColors.black,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Row(
                                            children: [
                                              Text("Matchs : 254",
                                                  style: TextStyle(
                                                      color: AppColors.lightBlack,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w400)),
                                              Text("Win : 87",
                                                  style: TextStyle(
                                                      color: AppColors.lightBlack,
                                                      fontSize: 10.sp,
                                                      fontWeight: FontWeight.w400))
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Upcomming Matches",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    SizedBox(
                      height: 153.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (context, index) => Column(
                          children: [
                            3.verticalSpace,
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              padding: EdgeInsets.only(left: 5.w, right: 12.w),
                              height: 140.h,
                              width: 254.w,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3.r),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            AppColors.lightBlack.withOpacity(0.8),
                                        blurRadius: 2)
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                        width: 10.w,
                                      ),
                                      Text(
                                        "T20 Match",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const Spacer(),
                                      Text(
                                        "48h 30m",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.h,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 33.w),
                                            child: Image(
                                              image:
                                                  const AssetImage(Assets.imagesWinner),
                                              width: 50.w,
                                              height: 66.62.h,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 22.w,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 22.w),
                                            child: Text(
                                              "1st Team name",
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15.w,
                                      ),
                                      Text(
                                        "VS",
                                        style: TextStyle(
                                            color: AppColors.black,
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 34.w),
                                            child: Image(
                                              image: const AssetImage(
                                                  Assets.imagesLosser),
                                              width: 50.w,
                                              height: 66.62.h,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 15.w),
                                            child: Text(
                                              "1st Team name",
                                              style: TextStyle(
                                                  color: AppColors.black,
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, right: 18.33.w),
                      alignment: Alignment.center,
                      height: 350.h,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(Assets.imagesAchivement),fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(5.r),
                        gradient: LinearGradient(colors: [
                          AppColors.lightYellow,
                          AppColors.darkYellow,
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20.w, right: 18.33.w),
                      alignment: Alignment.center,
                      height: 350.h,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage(Assets.imagesLabels),fit: BoxFit.cover
                          ),
                        borderRadius: BorderRadius.circular(5.r),
                        gradient: LinearGradient(colors: [
                          AppColors.lightBlue,
                          AppColors.blue,
                        ]),

                      ),
                    ),
                    SizedBox(
                      height: 28.75.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(image: const AssetImage(Assets.imagesIconsTrophy),height:21.h,width: 21.w,),
                        Text(
                          "Individual Ranking",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      height: 38.h,
                      decoration: BoxDecoration(
                        color: AppColors.dimBlue,
                      ),
                      child: Row(
                        children: [
                          Text("Name",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColors.darkBlue),),
                         161.horizontalSpace,
                          Text("win Rate",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColors.darkBlue),),
                          const Spacer(),
                          Text("Rank",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w600,color: AppColors.darkBlue),),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                SizedBox(
                  height: 100.h,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 15,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 22.w),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(image: const AssetImage(Assets.imagesEllipse),height:21.h,width: 21.w,),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Member Name 1",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              90.horizontalSpace,
                              Text(
                                "85%",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Spacer(),
                              Text(index.toString(),
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        )
                      ],
                    ),
                  ),
                ),
                    SizedBox(
                      height:
                      40.h
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      height: 380.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.r),
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                                color:
                                AppColors.lightBlack.withOpacity(0.8),
                                blurRadius: 2)
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("Last Auction Base Price",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),),
                          SizedBox(
                            height: 21.h,
                          ),

                          Row(
                            children: [
                              SizedBox(
                                width: 69.w,
                              ),
                              const Image(image: AssetImage(Assets.imagesObjects)),
                              SizedBox(
                                width: 17.68.w,
                              ),
                              Image(image: const AssetImage(Assets.imagesCoins),width: 76.w,height: 28.h,)
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text("Last Match Details"),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 59.w),
                                    child: Image(
                                      image:
                                      const AssetImage(Assets.imagesWinner),
                                      width: 50.w,
                                      height: 66.62.h,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 22.w,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.w),
                                    child: Text(
                                      "1st Team name",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 34.w,
                              ),
                              Text(
                                "VS",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 43.w),
                                    child: Image(
                                      image: const AssetImage(
                                          Assets.imagesLosser),
                                      width: 50.w,
                                      height: 66.62.h,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Text(
                                      "1st Team name",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
