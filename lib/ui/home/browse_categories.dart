import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../router/app_router.dart';
import '../../values/colors.dart';
import '../../values/style.dart';


@RoutePage()
class BrowseCategoriesPage extends StatefulWidget {
  const BrowseCategoriesPage({super.key});

  @override
  State<BrowseCategoriesPage> createState() => _BrowseCategoriesPageState();
}

class _BrowseCategoriesPageState extends State<BrowseCategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined, color: AppColor.black),
          onPressed: () => appRouter.pop(),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColor.white,
        title: Text(
          S.current.browseCategories,
          style: textMedium.copyWith(fontSize: 20.spMin, color: AppColor.black),
        ),
        actions: [
          InkWell(
            onTap: () {

            },
            child: Padding(
              padding: EdgeInsets.only(right: 12.w),
              child: Image.asset(
                Assets.imageSearch,
                height: 24.h,
                width: 24.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildFavouritesProductGrid() {
  return GridView.builder(
    itemCount: 5,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      mainAxisExtent: 242.h,
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 2,
    ),
    shrinkWrap: true,
    clipBehavior: Clip.none,
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 2.h),
    itemBuilder: (context, index) {
      return Container(
        height: 500.h,
        color: AppColor.primaryColor,
      );
      // return _buildFavouritesProductCard(index);
    },
  );
}
