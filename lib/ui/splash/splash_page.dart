import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test_3/values/export.dart';

import '../../core/db/app_db.dart';
import '../../core/locator/locator.dart';
import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../router/app_router.dart';
import '../../values/colors.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    initSetting();
    super.initState();
  }

  Future<void> initSetting() async {
    Future.delayed(const Duration(seconds: 1), () {
      final appDB = locator.get<AppDB>();
      if (!appDB.isLogin) {
        locator<AppRouter>().replaceAll([const LoginRoute()]);
      } else {
        locator<AppRouter>().replaceAll([const HomeRoute()]);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.green,
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.h),
                child: Center(
                  child: Image(
                    image: AssetImage(Assets.imageSpaleshVector),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Text(
                  "Erasustain",
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,
                    fontFamily: 'fraunces',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.w),
                child: Text(
                  "Impacting lives one notification at a time",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    fontFamily: 'fraunces',
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 75.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage(Assets.imageMadeInIndia),
                  height: 24.h,
                  width: 53.w,
                ),
                SizedBox(width: 80.w),
                Image(image: AssetImage(Assets.imageStartupIndiaHubLogo),
                  height: 24.h,
                  width: 96.w,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Made in India",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  "|",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColor.white,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  "#nayadeshnayisoch",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
