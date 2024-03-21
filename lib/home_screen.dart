import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test/generated/assets.dart';
import 'package:surprise_test/models/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int newCurrentIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 68.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 34.w),
              child: Container(
                height: 62.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100.r),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.search,
                      weight: 26.92,
                      size: 26.65,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "Where to?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp),
                        ),
                        Text(
                          "Anywhere, Any week, Add guests",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 12.sp,
                              color: AppColors.lightBlack),
                        )
                      ],
                    ),
                    CircleAvatar(
                      radius: 25.r,
                        backgroundColor: AppColors.pink,
                        child: Image(
                          image: const AssetImage(
                            Assets.imagesIcon,
                          ),
                          width: 20.4.w,
                          height: 19.4.h,
                          color: AppColors.white,
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: AppColors.pink,
                tabs: [
                  Tab(
                    icon: Image.asset(Assets.imagesCabin,
                        height: 45.w, width: 45.h),
                    text: "Home",
                  ),
                  Tab(
                    icon: Image.asset(
                      Assets.imagesHotel,
                      height: 45.w,
                      width: 45.h,
                    ),
                    text: "Apartments",
                  ),
                  Tab(
                    icon: Image.asset(
                      Assets.imagesGroup,
                      height: 45.w,
                      width: 45.h,
                    ),
                    text: "Tent",
                  ),
                  Tab(
                    icon: Image.asset(
                      Assets.imagesBeacharea,
                      height: 45.w,
                      width: 45.h,
                    ),
                    text: "Beachfront",
                  ),
                ]),
            const Expanded(
              child: TabBarView(children: [
                Hotels(),
                Text("bdzjkcbsdb"),
                Text("bdzjkcbsdb"),
                Text("sharma"),
              ]),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: newCurrentIndex,
          onTap: (newIndex) {
            setState(() {
              newCurrentIndex = newIndex;
            });
          },
          selectedItemColor: AppColors.pink,
          unselectedItemColor: AppColors.lightBlack,
          showUnselectedLabels: true,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.search_rounded),
              label: "Explore",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: "Wishlist",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(Assets.imagesBottomIcon),
              label: "Trips",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(Assets.imagesInboxicon),
              label: "Index",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 252.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  3.verticalSpace,
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 12.66.w),
                    height: 242.h,
                    width: 174.34.w,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent.withOpacity(0.05),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15.r),
                            bottomRight: Radius.circular(15.r))),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15.r),
                                    topLeft: Radius.circular(15.r)),
                                child: Image(
                                  image: const AssetImage(
                                      Assets.imagesIstockphoto1449681387170667),
                                  width: 174.w,
                                  height: 158.h,
                                  fit: BoxFit.cover,
                                )),
                            Positioned(
                                top: 15.h,
                                right: 7.98.w,
                                child: Container(
                                  height: 32.08.h,
                                  width: 32.08.w,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        AppColors.lightBlack.withOpacity(0.5),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 9.w),
                          child: Row(
                            children: [
                              Text(
                                "Premium Homes",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.sp),
                              ),
                              Icon(
                                Icons.star,
                                weight: 20.w,
                                size: 18.73.h,
                                color: AppColors.yello,
                              ),
                              Text(
                                "(5.0)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 9.w),
                          child: Text(
                            "These residences stand as modern-day palaces.",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 11.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        31.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Text(
            "Popular Places",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.sp),
          ),
        ),
        13.verticalSpace,
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Stack(
              children: [
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 13.h,
                        crossAxisSpacing: 20.h),
                    itemBuilder: (context, index) => SizedBox(
                          width: 172.w,
                          height: 164.79.h,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    image: const DecorationImage(
                                        image: AssetImage(Assets
                                            .imagesIstockphoto1490772774170667a))),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.transparent,
                                        Colors.black54,
                                        Colors.black87,
                                      ]),
                                ),
                              ),
                              Positioned(
                                  top: 12.21,
                                  right: 9.8,
                                  child: CircleAvatar(
                                    radius: 20.r,
                                    backgroundColor: AppColors.pink,
                                    child: Icon(
                                      Icons.favorite_border,
                                      color: AppColors.white,
                                    ),
                                  )),
                              Positioned(
                                left: 24.w,
                                top: 93.h,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Majestic Peaks",
                                      style: TextStyle(
                                          color: AppColors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15.sp),
                                    ),
                                    SizedBox(
                                      height: 9.h,
                                    ),
                                    SizedBox(
                                      height: 38.h,
                                      width: 126.w,
                                      child: Text(
                                        "where the allure of towering summits.",
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 11.sp),
                                      ),
                                    ),
                                    Text(
                                      "Explore more...",
                                      style: TextStyle(
                                          color: AppColors.pink,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.sp),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Colors.transparent,
                          AppColors.white.withOpacity(0.3),
                      AppColors.white.withOpacity(0.5),
                          AppColors.white.withOpacity(0.9)
                    ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
