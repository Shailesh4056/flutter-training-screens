import 'dart:convert';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx/mobx.dart';
import 'package:super_bullet_list/bullet_list.dart';
import 'package:surprise_test_3/service/enc_service.dart';
import 'package:surprise_test_3/ui/auth/store/auth_store.dart';
import '../../../../generated/l10n.dart';
import '../../../../values/colors.dart';
import '../../../../values/style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../core/db/app_db.dart';
import '../../generated/assets.dart';
import '../../router/app_router.dart';
import '../../util/media_picker.dart';
import '../../util/permission_utils.dart';
import '../../widget/media_picker_bottomsheet.dart';
import '../../widget/show_message.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late ValueNotifier showLoading;

  @override
  void initState() {
    super.initState();
    getHomeData();
    showLoading = ValueNotifier<bool>(false);
  }

  @override
  void dispose() {
    // showLoading.dispose();
    super.dispose();
  }

  Future<void> getHomeData() async {
    await authStore.home({
      "social_profile_id": "214"
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (context) {
          var data = authStore.homeData?.data;
          return authStore.homeData?.data != null ? Scaffold(
            backgroundColor: AppColor.white,
            appBar: AppBar(
              title: Text(
                data!.name.toString(),
                style: textBold.copyWith(
                    fontSize: 20.spMin, color: AppColor.green),
              ),
              elevation: 0,
              backgroundColor: AppColor.white,
              actions: [
                InkWell(
                  onTap: () {
                    appDB.logout();
                    appRouter.replaceAll([const LoginRoute()]);
                  },
                  child: Image(
                    image: AssetImage(Assets.imagePowerOff),
                    height: 32.h,
                  ),
                ),
                CircleAvatar(
                  radius: 14.r,
                  backgroundImage: CachedNetworkImageProvider(
                      data.profileImage.toString()),
                ),
                20.horizontalSpace,
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25.r),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: CachedNetworkImage(
                            imageUrl:
                            data!.coverImage.toString(),
                            height: 190.h,
                            fit: BoxFit.cover,
                            placeholder: (context, url) =>
                                Center(child: new CircularProgressIndicator()),
                            errorWidget: (context, url, error) =>
                                Center(child: new Icon(Icons.error)),
                          ),
                        ),
                        30.verticalSpace,
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(

                                borderRadius: BorderRadius.circular(20.r),
                                child: CachedNetworkImage(
                                  imageUrl:
                                  data.idImage.toString(),
                                  height: 60.h,
                                  width: 60,
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) =>
                                      Center(
                                          child: new CircularProgressIndicator()),
                                  errorWidget: (context, url, error) =>
                                      Center(child: new Icon(Icons.error)),
                                ),
                              ),
                              15.horizontalSpace,
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        data.name.toString(),
                                        style: textBold.copyWith(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      10.horizontalSpace,
                                      Image(
                                        image: AssetImage(Assets.imageVerify),
                                        height: 15.h,
                                        width: 15.w,
                                      )
                                    ],
                                  ),
                                  15.verticalSpace,
                                  Text(
                                    "12 mutuals including Karan",
                                    style: textBold.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        30.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "About us:",
                              style: textBold.copyWith(
                                  fontSize: 14.sp, fontWeight: FontWeight.w700),
                            ),
                            5.verticalSpace,
                            SuperBulletList(
                              iconSize: 5.r,
                              iconColor: AppColor.grey,
                              items: [
                                Text(
                                    'We are a multinational NPO working towards the welfare of the society'),
                              ],
                            )
                          ],
                        ),
                        30.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.r, vertical: 11.r),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.r),
                                  color: AppColor.green),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Text(
                                    "Committed",
                                    style: textRegular.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.white),
                                  ),
                                  15.horizontalSpace,
                                  Image(
                                      image: AssetImage(Assets.imageCommitted))
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.r, vertical: 11.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.r),
                                color: AppColor.lightGreen,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Text(
                                    "Followed",
                                    style: textRegular.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColor.green),
                                  ),
                                  15.horizontalSpace,
                                  Image(
                                    image: AssetImage(Assets.imageFollowed),
                                    color: AppColor.green,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        30.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10.r)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.r, vertical: 6.r),
                              child: Column(
                                children: [
                                  Text(
                                    "1,265",
                                    style: textBold.copyWith(),
                                  ),
                                  Text(
                                    "committed",
                                    style: textRegular.copyWith(
                                        color: AppColor.grey, fontSize: 12.sp),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(10.r)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.r, vertical: 6.r),
                              child: Column(
                                children: [
                                  Text(
                                    "1,265",
                                    style: textBold.copyWith(),
                                  ),
                                  Text(
                                    "followers",
                                    style: textRegular.copyWith(
                                        color: AppColor.grey, fontSize: 12.sp),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColor.greenLight,
                                  borderRadius: BorderRadius.circular(10.r)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.r, vertical: 6.r),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceAround,
                                    children: [
                                      Image(
                                          image: AssetImage(Assets.imagePhone)),
                                      5.horizontalSpace,
                                      Image(
                                          image: AssetImage(Assets.imageEmail)),
                                      5.horizontalSpace,
                                      Image(image: AssetImage(
                                          Assets.imageWhatsapp)),
                                    ],
                                  ),
                                  Text(
                                    "contact",
                                    style: textRegular.copyWith(
                                        color: AppColor.green, fontSize: 12.sp),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        30.verticalSpace,
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.r, vertical: 11
                              .r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColor.lightGreen,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Get Certificate",
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.green),
                              ),
                              15.horizontalSpace,
                              Image(
                                image: AssetImage(Assets.imageCommitted),
                                color: AppColor.green,
                              )
                            ],
                          ),
                        ),
                        30.verticalSpace,
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.r, vertical: 11
                              .r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColor.lightGreen,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Volunteer",
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.green),
                              ),
                              15.horizontalSpace,
                              Image(
                                image: AssetImage(Assets.imageFollowed),
                                color: AppColor.green,
                              )
                            ],
                          ),
                        ),
                        30.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Celebrity Ambassadors",
                              style: textRegular.copyWith(
                                  fontSize: 12.sp, color: AppColor.grey),
                            ),
                            15.verticalSpace,
                            SizedBox(
                              height: 100.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: data.celebrity?.length,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 30.r),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                          ),
                                          child: CircleAvatar(
                                            radius: 30.r,
                                            backgroundImage: CachedNetworkImageProvider(
                                                data.celebrity![index]
                                                    .profileImage.toString()),
                                          )),
                                      15.verticalSpace,
                                      Text(
                                        data.celebrity![index].name.toString(),
                                        overflow: TextOverflow.clip,
                                        style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColor.grey),
                                      )
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        30.verticalSpace,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Company Ambassadors",
                              style: textRegular.copyWith(
                                  fontSize: 12.sp, color: AppColor.grey),
                            ),
                            15.verticalSpace,
                            SizedBox(
                              height: 100.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(right: 30.r),
                                          decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                          child: CircleAvatar(
                                            radius: 30.r,
                                            backgroundImage: CachedNetworkImageProvider(
                                                "https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/640px-Starbucks_Corporation_Logo_2011.svg.png"
                                            ),
                                          )),
                                      15.verticalSpace,
                                      Text(
                                        "starbucks",
                                        overflow: TextOverflow.clip,
                                        style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColor.grey),
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                            30.verticalSpace,
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.r, vertical: 16.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.r),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "Top Volunteer",
                                    style: textRegular.copyWith(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.grey),
                                  ),
                                  Text(
                                    "Karan Chawla",
                                    style: textRegular.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 25.r, vertical: 15.r),
                    decoration: BoxDecoration(
                      color: AppColor.lightBrownSugarColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Updates",
                          style: textRegular.copyWith(color: AppColor
                              .burntOrange),
                        ),
                        15.verticalSpace,
                        Container(
                          padding: EdgeInsets.all(15.r),
                          decoration: BoxDecoration(color: AppColor.grayLight),
                          width: 1.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.r),
                                child: CachedNetworkImage(
                                  imageUrl:
                                  data.normalCampaignData!.campaignMediaList![0]
                                      .image.toString(),
                                  height: 175.h,
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) =>
                                      Center(
                                          child: new CircularProgressIndicator()),
                                  errorWidget: (context, url, error) =>
                                      Center(child: new Icon(Icons.error)),
                                ),
                              ),
                              15.verticalSpace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    data.normalCampaignData!.campaignName
                                        .toString(),
                                    style: textBold.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Share",
                                          style: textRegular.copyWith(
                                            color: AppColor.green,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        Icon(
                                          Icons.share,
                                          color: AppColor.green,
                                          size: 11.h,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: data.normalCampaignData!.eTime,
                                  style: textLight.copyWith(
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.spMin,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: "| 50k interested",
                                      style: textSemiBold.copyWith(
                                          fontSize: 12.spMin,
                                          color: AppColor.grey,
                                          fontWeight: FontWeight.w400),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                                content: Text(S.current.tNc)),
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                              15.verticalSpace,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.r, vertical: 5.r),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: AppColor.burntOrange.withOpacity(
                                          0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "End  Date ; ${data
                                              .normalCampaignData!.endDate
                                              .toString()}",
                                          style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.burntOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.r, vertical: 5.r),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: AppColor.burntOrange.withOpacity(
                                          0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(

                                          "${data.normalCampaignData!
                                              .totalParticipated
                                              .toString()}participated",
                                          style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.burntOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              15.verticalSpace,
                              Text(
                                data.normalCampaignData!.discription.toString(),
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                              ),
                              15.verticalSpace,
                              SizedBox(
                                height: 30.h,
                                child: MaterialButton(
                                  elevation: 0,
                                  padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10.0)
                                      .r,
                                  onPressed: () {},
                                  color: AppColor.green,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                  ),
                                  child: Text(
                                    "Donate",
                                    style: textBold.copyWith(
                                        color: AppColor.white,
                                        fontSize: 12.spMin),
                                  ),
                                ),
                              ),
                              15.verticalSpace,
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10.r)),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.r, horizontal: 15.r),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: "${data.normalCampaignData!
                                                .totalBudget} raised ",
                                            style: textRegular.copyWith(
                                                color: AppColor.green,
                                                fontSize: 12.sp),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "(${data
                                                    .normalCampaignData!
                                                    .donatedAmount}  goal)",
                                                style: textRegular.copyWith(
                                                    color: AppColor.grey,
                                                    fontSize: 12.sp),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    ScaffoldMessenger.of(
                                                        context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                          content:
                                                          Text(S.current.tNc)),
                                                    );
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("75%",
                                            style: textRegular.copyWith(
                                                color: AppColor.grey,
                                                fontSize: 12.sp)),
                                      ],
                                    ),
                                    10.verticalSpace,
                                    LinearProgressIndicator(
                                      backgroundColor: AppColor.greenLight,
                                      color: AppColor.green,
                                      value: 0.7,
                                      borderRadius: BorderRadius.circular(10.r),
                                      minHeight: 9.h,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        15.verticalSpace,
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.r, vertical: 11
                              .r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColor.lightGreen,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "View All Campaign",
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.green),
                              ),
                              15.horizontalSpace,
                              Icon(
                                Icons.arrow_forward,
                                color: AppColor.green,
                                size: 13.h,
                              )
                            ],
                          ),
                        ),
                        15.verticalSpace,
                        Text(
                          "Sos",
                          style: textRegular.copyWith(color: AppColor
                              .burntOrange),
                        ),
                        Container(
                          padding: EdgeInsets.all(15.r),
                          decoration: BoxDecoration(color: AppColor.grayLight),
                          width: 1.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.r),
                                child: CachedNetworkImage(
                                  imageUrl:
                                  "https://assets.telegraphindia.com/telegraph/2022/Oct/1665998444_india.jpg",
                                  height: 175.h,
                                  fit: BoxFit.contain,
                                  placeholder: (context, url) =>
                                      Center(
                                          child: new CircularProgressIndicator()),
                                  errorWidget: (context, url, error) =>
                                      Center(child: new Icon(Icons.error)),
                                ),
                              ),
                              15.verticalSpace,
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(
                                    "Save earth",
                                    style: textBold.copyWith(
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "Share",
                                          style: textRegular.copyWith(
                                            color: AppColor.green,
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        5.horizontalSpace,
                                        Icon(
                                          Icons.share,
                                          color: AppColor.green,
                                          size: 11.h,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text: "Jan 5, 23, Britain ",
                                  style: textLight.copyWith(
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.spMin,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: "| 50k interested",
                                      style: textSemiBold.copyWith(
                                          fontSize: 12.spMin,
                                          color: AppColor.grey,
                                          fontWeight: FontWeight.w400),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                                content: Text(S.current.tNc)),
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                              15.verticalSpace,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.r, vertical: 5.r),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: AppColor.burntOrange.withOpacity(
                                          0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "End  Date ; 23 Jun 24",
                                          style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.burntOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.r, vertical: 5.r),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.r),
                                      color: AppColor.burntOrange.withOpacity(
                                          0.2),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          "37,025 participated",
                                          style: textRegular.copyWith(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: AppColor.burntOrange,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              15.verticalSpace,
                              Text(
                                "Sit sit magna leo semper et sem egestas tincidunt. Nisl aliquet pellentesque aliquam aenean fermentum quis. Congue rutrum faucibus sit at.",
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                              ),
                              15.verticalSpace,
                              SizedBox(
                                height: 30.h,
                                child: MaterialButton(
                                  elevation: 0,
                                  padding:
                                  const EdgeInsets.only(top: 10.0, bottom: 10.0)
                                      .r,
                                  onPressed: () {},
                                  color: AppColor.green,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide.none,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10.r)),
                                  ),
                                  child: Text(
                                    "Donate",
                                    style: textBold.copyWith(
                                        color: AppColor.white,
                                        fontSize: 12.spMin),
                                  ),
                                ),
                              ),
                              15.verticalSpace,
                              Container(
                                decoration: BoxDecoration(
                                    color: AppColor.white,
                                    borderRadius: BorderRadius.circular(10.r)),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.r, horizontal: 15.r),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: "\$105,171 raised ",
                                            style: textRegular.copyWith(
                                                color: AppColor.green,
                                                fontSize: 12.sp),
                                            children: <InlineSpan>[
                                              TextSpan(
                                                text: "(\$140,228 goal)",
                                                style: textRegular.copyWith(
                                                    color: AppColor.grey,
                                                    fontSize: 12.sp),
                                                recognizer: TapGestureRecognizer()
                                                  ..onTap = () {
                                                    ScaffoldMessenger.of(
                                                        context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                          content:
                                                          Text(S.current.tNc)),
                                                    );
                                                  },
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text("75%",
                                            style: textRegular.copyWith(
                                                color: AppColor.grey,
                                                fontSize: 12.sp)),
                                      ],
                                    ),
                                    10.verticalSpace,
                                    LinearProgressIndicator(
                                      backgroundColor: AppColor.greenLight,
                                      color: AppColor.green,
                                      value: 0.7,
                                      borderRadius: BorderRadius.circular(10.r),
                                      minHeight: 9.h,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        15.verticalSpace,
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: 30.r, vertical: 11
                              .r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.r),
                            color: AppColor.lightGreen,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "View All Campaign",
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.green),
                              ),
                              15.horizontalSpace,
                              Icon(
                                Icons.arrow_forward,
                                color: AppColor.green,
                                size: 13.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ) : Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: AppColor.green,
                backgroundColor: AppColor.grey,
                strokeWidth: 2.w,
              ),
            ),
          );
        }
    );
  }
}
