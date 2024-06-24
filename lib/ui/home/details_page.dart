import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:june_6_tasks/router/app_router.dart';
import 'package:june_6_tasks/ui/auth/store/auth_store.dart';
import 'package:june_6_tasks/values/export.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../generated/assets.dart';

@RoutePage()
class DetailsPage extends StatefulWidget {
  final int id;

  DetailsPage({super.key, required this.id});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    super.initState();
    _fetchCategoryData();
  }

  Future _fetchCategoryData() async {
    try {
      await authStore.subCategory({"category_id": widget.id + 1});
      print(authStore.subcategoryResponse!.data![0].name);
    } catch (e) {
      debugPrint("error fetching user data $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    // print("your data is $data");
    return Scaffold(
      body: Observer(builder: (BuildContext context) {
        return authStore.subcategoryResponse?.data != null
            ? NestedScrollView(
                // The headerSliverBuilder callback defines the sliver widgets in the header
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    // SliverAppBar is the header that remains visible while scrolling
                    SliverAppBar(
                      backgroundColor: AppColor.white,
                      expandedHeight: 200.0,
                      floating: false,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: CachedNetworkImage(
                          imageUrl: authStore.loginResponse!.data!
                                  .categories?[widget.id].image ??
                              '',
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
                    ),
                  ];
                },
                // The body contains the scrollable content
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        20.verticalSpace,
                        Text(
                          "House Cleaning",
                          style: textBold.copyWith(
                              fontSize: 22.sp, color: AppColor.darkViolet),
                        ),
                        5.verticalSpace,
                        ReadMoreText("Our taskers will make your space shine! ",
                            trimLines: 1,
                            trimLength: 40,
                            colorClickableText: AppColor.darkViolet,
                            style: textRegular.copyWith(
                                color: AppColor.grey, fontSize: 14.sp)),
                        20.verticalSpace,
                        Text("Available cleaning services",
                            style: textRegular.copyWith(
                                fontSize: 14.sp, color: AppColor.darkViolet)),
                        ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount:
                              authStore.subcategoryResponse!.data!.length ?? 0,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            // print( " avb===${authStore.subcategoryResponse!.data!.length}");
                            var data = authStore.subcategoryResponse?.data?[index];
                            return InkWell(
                              onTap: () {
                                appRouter.push(SubCategoryRoute(id: index));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 7.h),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 10.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: AppColor.white),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: data!.image.toString(),
                                      height: 70.h,
                                      width: 70.w,
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                      ),
                                      placeholder: (context, url) =>
                                          CircularProgressIndicator(
                                        color: AppColor.black,
                                        backgroundColor: AppColor.grey,
                                        strokeWidth: 1,
                                      ),
                                      errorWidget: (context, url, error) => Icon(
                                        Icons.error,
                                        color: AppColor.red,
                                      ),
                                    ),
                                    15.horizontalSpace,
                                    Flexible(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            data.name.toString(),
                                            style: textRegular.copyWith(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                          5.verticalSpace,
                                          ReadMoreText(
                                            data.description.toString(),
                                            style: textRegular.copyWith(
                                                color: AppColor.grey),
                                            trimLength: 30,
                                            trimLines: 2,
                                            colorClickableText: AppColor.teal,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Center(
              child: CircularProgressIndicator(
                        color: AppColor.red,
                        strokeWidth: 2,
                        backgroundColor: AppColor.grey,
                      ),
            );
      }),
      bottomSheet: Container(
        decoration: BoxDecoration(color: AppColor.black),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Row(
          children: [
            Image(
              image: AssetImage(Assets.imageTryg),
              width: 56,
              height: 25,
              fit: BoxFit.contain,
            ),
            17.horizontalSpace,
            Flexible(
              child: ReadMoreText(
                "Price includes VAT, service fee, administration fee and Tryg Insurance   See details ",
                style: textRegular.copyWith(
                    color: AppColor.white,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400),
                trimLines: 2,
                trimLength: 50,
                trimCollapsedText: "See details",
                colorClickableText: AppColor.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
