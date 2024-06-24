import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:june_6_tasks/values/extensions/widget_ext.dart';
import 'package:readmore/readmore.dart';
import 'package:super_bullet_list/bullet_list.dart';

import '../../generated/assets.dart';
import '../../values/colors.dart';
import '../../values/style.dart';
import '../auth/store/auth_store.dart';

@RoutePage()
class SubCategoryPage extends StatefulWidget {
  final int id;
  const SubCategoryPage({super.key, required this.id});

  @override
  State<SubCategoryPage> createState() => _SubCategoryPageState();
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  String? _selectedValue;

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
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
                          imageUrl: authStore.subcategoryResponse!
                                  .data?[widget.id].image ??
                              '',
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            20.verticalSpace,
                            Text(
                              authStore.subcategoryResponse!.data![widget.id]
                                      .name ??
                                  '',
                              style: textBold.copyWith(
                                  fontSize: 18.sp, color: AppColor.black),
                            ),
                            5.verticalSpace,
                            ReadMoreText(
                                authStore.subcategoryResponse!.data![widget.id]
                                        .description ??
                                    '',
                                trimLines: 1,
                                trimLength: 40,
                                colorClickableText: AppColor.darkViolet,
                                style: textRegular.copyWith(
                                    color: AppColor.grey, fontSize: 14.sp)),
                            15.verticalSpace,
                            Text(
                              "Details",
                              style: textBold.copyWith(
                                  fontSize: 14.sp, color: AppColor.grey),
                            ),
                            4.verticalSpace,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                authStore.subcategoryResponse!.data![widget.id]
                                        .addOns!.length ??
                                    1,
                                (index) => SuperBulletList(
                                    iconSize: 5.w,
                                    iconColor: AppColor.grey,
                                    items: [
                                      ReadMoreText(
                                          authStore
                                                  .subcategoryResponse!
                                                  .data![widget.id]
                                                  .addOns![index]
                                                  .name
                                                  .toString() ??
                                              '',
                                          trimLines: 1,
                                          trimLength: 40,
                                          colorClickableText:
                                              AppColor.darkViolet,
                                          style: textRegular.copyWith(
                                              color: AppColor.grey,
                                              fontSize: 14.sp)),
                                    ]),
                              ),
                            ).wrapContainer(
                                padding: EdgeInsets.symmetric(horizontal: 5.w)),
                            20.verticalSpace,
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 21.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Task Details",
                                style: textRegular.copyWith(
                                    fontSize: 14.sp,
                                    color: AppColor.darkViolet,
                                    fontWeight: FontWeight.w600)),
                            15.verticalSpace,
                            Text("How often?",
                                style: textRegular.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColor.grey,
                                    fontWeight: FontWeight.w600)),
                            7.verticalSpace,
                            DropdownButtonFormField2<String>(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  fillColor: AppColor.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none)),
                              items: List.generate(
                                authStore.subcategoryResponse!.data![widget.id]
                                    .addOns!.length,
                                (index) => DropdownMenuItem(
                                  value: 'Option 1',
                                  child: Text('Option 1'),
                                ),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _selectedValue = value;
                                });
                              },
                              hint: Text('Select an option'),
                            ),
                            15.verticalSpace,
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 21.h, horizontal: 20.w),
                        decoration: BoxDecoration(color: AppColor.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Additional services",
                              style: textBold.copyWith(
                                fontSize: 14.sp,
                                color: AppColor.black,
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  4,
                                  (index) => CheckboxListTile(
                                    contentPadding: EdgeInsets.zero,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    selected: true,
                                    selectedTileColor: AppColor.purple,
                                    title: Text(
                                      "Deep kitchen cleaning",
                                      style: textRegular.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColor.grey,
                                      ),
                                    ),
                                    secondary: Text(
                                      "+ 1 hours",
                                      style: textRegular.copyWith(
                                          color: AppColor.teal,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    value: true,
                                    onChanged: (value) {
                                      value = false;
                                    },
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
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
    ;
  }
}
