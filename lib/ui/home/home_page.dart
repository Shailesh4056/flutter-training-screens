import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:june_6_tasks/router/app_router.dart';
import 'package:june_6_tasks/ui/auth/store/auth_store.dart';
import 'package:readmore/readmore.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';
import '../../../../values/colors.dart';
import '../../../../values/style.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> locationList = [
  'Surat',
  'Vadodara',
  'Ahmedabad',
  'Rajasthan',
  'Jaipur',
];

List<Color> colorsList = [
  AppColor.purple,
  AppColor.darkBlue,
  AppColor.orange,
  AppColor.teal,
  AppColor.grey,
  AppColor.transparent,
];

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int selectedIndex = 0;
  late ValueNotifier showLoading;
  ButtonStyle style =
      TextButton.styleFrom(minimumSize: const Size(double.maxFinite, 20));
  int? count;

  @override
  void initState() {
    super.initState();
    showLoading = ValueNotifier<bool>(false);
  }

  @override
  void dispose() {
    showLoading.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: bottomNavigationBar(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.white,
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DropdownMenu(
                requestFocusOnTap: true,
                hintText: S.current.yourCurrentLocation,
                selectedTrailingIcon: Icon(Icons.keyboard_arrow_up_outlined),
                dropdownMenuEntries: locationList
                    .map((e) => DropdownMenuEntry(value: e, label: e))
                    .toList(),
                enabled: true,
                inputDecorationTheme:
                    InputDecorationTheme(border: InputBorder.none),
                trailingIcon: Icon(Icons.keyboard_arrow_down),
                leadingIcon: Icon(
                  Icons.location_on_rounded,
                  color: AppColor.teal,
                  size: 20.h,
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image(image: AssetImage(Assets.imageHeart)),
                  10.horizontalSpace,
                  Badge(
                      label: Text("1"),
                      child: Image(image: AssetImage(Assets.imageChat))),
                  10.horizontalSpace,
                  Badge(
                      label: Text("1"),
                      child: Image(image: AssetImage(Assets.imageHeadericon)))
                ],
              ),
            )
          ],
        ),
        body: FutureBuilder(
            future:
            authStore.login({"latitude": "12.85", "longitude": "85.12"}),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: AppColor.red,
                    backgroundColor: AppColor.grey,
                    strokeWidth: 4,
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done ||
                  snapshot.connectionState == ConnectionState.active) {
                return SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(left: 20.w, right: 0, top: 20.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          S.current.popularProjectsInYourArea,
                          style: textSemiBold.copyWith(fontSize: 16.sp),
                        ),
                        15.verticalSpace,
                        SizedBox(
                          height: 160,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            itemCount: authStore.loginResponse?.data
                                    ?.popluarProjectList?.length ??
                                0,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var data = authStore.loginResponse?.data!.popluarProjectList?[index];
                              return Container(
                                padding: EdgeInsets.only(
                                    left: 55.w,
                                    right: 55.w,
                                    top: 30.h,
                                    bottom: 10.h),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: CachedNetworkImageProvider(
                                            data!.image.toString()))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      data.avgPriceDescription.toString(),
                                      style: textRegular.copyWith(
                                          fontSize: 16.sp,
                                          color: AppColor.white),
                                    ),
                                    Text(data.name.toString(),
                                        style: textMedium.copyWith(
                                            fontSize: 21.sp,
                                            color: AppColor.white)),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                          fixedSize: MaterialStateProperty.all(
                                              Size(143.sp, 23.sp)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  AppColor.teal),
                                        ),
                                        onPressed: () {},
                                        child: Text("Avg. price 200 dkk"))
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        15.verticalSpace,
                        Text(
                          "I need help with",
                          style: textRegular.copyWith(),
                        ),
                        15.verticalSpace,
                        gridView(),
                        30.verticalSpace,
                        Text(
                          "Featured helpers",
                          style: textBold.copyWith(fontSize: 16.sp),
                        ),
                        15.verticalSpace,
                        featuredHelpers(),
                      ],
                    ),
                  ),
                );
              } else {
                return Center(child: Text("Something is wrong"));
              }
            }));
  }

  ///gridview
  Widget gridView() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(right: 20, left: 0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
      itemCount: authStore.loginResponse?.data?.categories?.length ?? 0,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var data = authStore.loginResponse?.data?.categories?[index];
        return InkWell(
          onTap: () {
            appRouter.push(DetailsRoute(
              id: index,
            ));
          },
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Container(
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.h),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          data!.image.toString(),
                          errorListener: (p0) => Icon(
                            Icons.error,
                            color: AppColor.red,
                          ),
                        ))),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 20.h),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.h),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [colorsList[5], colorsList[index]]),
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        data.name.toString(),
                        style: textBold.copyWith(
                            fontSize: 18.sp, color: AppColor.white),
                      ),
                      Text(
                        data.title.toString(),
                        style: textRegular.copyWith(
                            fontSize: 12.sp, color: AppColor.white),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
  //bottom listview

  Widget featuredHelpers() {
    return SizedBox(
      height: 315.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: authStore.loginResponse?.data?.serviceProvider?.length ?? 0,
        itemBuilder: (context, index) {
          var data = authStore.loginResponse?.data?.serviceProvider?[index];
          return Container(
            width: 260.w,
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: AppColor.white)],
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                15.horizontalSpace,
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: CachedNetworkImage(
                        imageUrl: data!.profileImage.toString(),
                        height: 50.h,
                        width: 50.w,
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(
                            color: AppColor.black,
                            backgroundColor: AppColor.grey,
                            strokeWidth: 1,
                          ),
                        ),
                        errorWidget: (context, url, error) => Icon(
                          Icons.error,
                          color: AppColor.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(data.fullName.toString()),
                          6.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: List.generate(
                                  3,
                                  (index) {
                                    return Icon(
                                      Icons.star,
                                      color: AppColor.wildRiceColor,
                                    );
                                  },
                                ),
                              ),
                              3.verticalSpace,
                              Text("${data.totalReview.toString()} reviews"),
                            ],
                          ),
                          Row(
                            children: [
                              Image(image: AssetImage(Assets.imageFrame)),
                              3.verticalSpace,
                              Text(data.fullAddress.toString()),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                10.verticalSpace,
                ReadMoreText(
                  data.aboutMe.toString(),
                  trimLines: 8,
                ),
                15.verticalSpace,
                Container(
                  color: AppColor.amenities.withOpacity(0.05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "I can help you with",
                        style: TextStyle(color: AppColor.teal),
                      ),
                      16.verticalSpace,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Childcare "),
                          Text(
                            "140 dkk / hour",
                            style: TextStyle(color: AppColor.teal),
                          ),
                        ],
                      ),
                      12.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Math tutoring"),
                          Text(
                            "${data.distance.toString()} dkk / hour",
                            style: TextStyle(color: AppColor.teal),
                          )
                        ],
                      ),
                      12.verticalSpace,
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Cooking"),
                          Text(
                            "150 dkk / hour",
                            style: TextStyle(color: AppColor.teal),
                          ),
                        ],
                      ),
                      12.verticalSpace,
                    ],
                  ),
                ),
                ReadMoreText(
                  data.aboutMe.toString(),
                  trimLines: 2,
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget bottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        selectedItemColor: AppColor.teal,
        unselectedItemColor: AppColor.black,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage(Assets.imageHome),
                color: selectedIndex == 0 ? AppColor.teal : AppColor.santasGray,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(Assets.imageBookings),
                  color:
                      selectedIndex == 1 ? AppColor.teal : AppColor.santasGray),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(Assets.imageSearch),
                  color:
                      selectedIndex == 2 ? AppColor.teal : AppColor.santasGray),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image(
                  image: AssetImage(Assets.imageProfile),
                  color:
                      selectedIndex == 3 ? AppColor.teal : AppColor.santasGray),
              label: "Home"),
        ]);
  }

  ///bottom sheet
}
