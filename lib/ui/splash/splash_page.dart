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
    Future.delayed(const Duration(seconds: 2), () {
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
    return Container(
      decoration: BoxDecoration(
        color: AppColor.green,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          271.verticalSpace,
          Image(image: AssetImage(Assets.imageSpaleshVector)),
          15.verticalSpace,
          Text(
            S.current.erasustain,
            style: textBold.copyWith(color: AppColor.white, fontSize: 24.sp),
          ),
          30.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.r),
            child: Text(
              S.current.impactingLivesOneNotificationsAtATime,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.center,
              style: textRegular.copyWith(
                  color: AppColor.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Spacer(flex: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 72.r),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(image: AssetImage(Assets.imageMadeInIndia)),
                Image(image: AssetImage(Assets.imageStartupIndiaHubLogo)),
              ],
            ),
          ),
          15.verticalSpace,
          RichText(
            text: TextSpan(
              text: S.current.madeInIndia,
              style: textLight.copyWith(
                color: AppColor.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.spMin,
              ),
              children: <InlineSpan>[
                TextSpan(
                  text: S.current.nayadeshnayisoch,
                  style: textSemiBold.copyWith(
                      fontSize: 16.spMin,
                      color: AppColor.white,
                      fontWeight: FontWeight.w600),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(S.current.tNc)),
                      );
                    },
                ),
              ],
            ),
          ),
          40.verticalSpace,
        ],
      ),
    );
  }
}
