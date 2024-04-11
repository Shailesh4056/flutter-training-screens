import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/model/data_list.dart';
import 'generated/assets.dart';
import 'model/colors.dart';

class CustomAppBar {
  Widget customAppBar(title, [IconData? trailing]) {
    return PreferredSize(
      preferredSize: Size(double.infinity, 54.h),
      child: AppBar(
        title: Text(
          title,
          style: TextStyle(
              color: Colors.green,
              fontSize: 18.sp,
              fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          );
        }),
        actions: [
          Container(
            child: Stack(
              children: [
                Positioned(
                  right: 9,
                  top: 5,
                  child: CircleAvatar(
                    radius: 7.r,
                    backgroundColor: AppColors.green,
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 8.sp),
                    ),
                  ),
                ),
                Builder(builder: (context) {
                  return GestureDetector(onTap: (){},child: Icon(trailing));
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}

///custom text form field
class CustomTextFormField extends StatelessWidget {
  String Function(String? value) validator;
  String hintText;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  CustomTextFormField(
      {super.key,
      required this.validator,
      required this.hintText,
      required this.keyboardType,
      required this.textInputAction});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.4),
        filled: true,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.r),
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
    );
  }
}

// custom button
class CustomButton extends StatefulWidget {
  void Function() onPressed;
  String buttonName;
  CustomButton({super.key, required this.buttonName, required this.onPressed});
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46.h,
      width: 1.sw,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        onPressed: widget.onPressed,
        child: Text(
          widget.buttonName,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

/// custom card
Widget customContainer(index) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10)]),
    width: 1.sw,
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
    child: Row(
      children: [
        Stack(
          children: [
            Container(
                padding: EdgeInsets.symmetric(vertical: 6.h),
                child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        ListOfData().storeDetails[index]['imageUrl']))),
            Positioned(
              left: 20.w,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      weight: 8.5,
                      size: 8.5,
                    ),
                    Text(
                      ListOfData().storeDetails[index]['rank'],
                      style: TextStyle(color: Colors.white, fontSize: 8.sp),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, top: 15.h, bottom: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ListOfData().storeDetails[index]['title'],
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Text(
                      ListOfData().storeDetails[index]['mile'],
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                    ),
                  ],
                ),
                Text(
                  ListOfData().storeDetails[index]['subtitle'],
                  style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                ),
                5.verticalSpace,
                Text(
                  ListOfData().storeDetails[index]['address'],
                  style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

///reviews container

Widget customReviewsContainer() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10.r),
    ),
    width: 1.sw,
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
    child: Row(
      children: [
        const CircleAvatar(
            radius: 35, backgroundImage: AssetImage(Assets.imagesReviewrs)),
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(left: 10.w, top: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 275,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Michail trot",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      7.verticalSpace,
                      Text(
                        "2 min ago",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                    Icon(Icons.star, color: Colors.yellow),
                  ],
                ),
                5.verticalSpace,
                SizedBox(
                    width: 255.w,
                    child: Text(
                      "Lorem Ipsum is simply dummy textLorem Ipsum is sim ply dummy textLorem Ipsum is simply dummy text",
                      style: TextStyle(color: Colors.grey, fontSize: 10.sp),
                    )),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

///store menu container

class CategoriesContainer extends StatefulWidget {
  double width;
  String categoryTitle;
  CategoriesContainer(
      {super.key, required this.width, required this.categoryTitle});

  @override
  State<CategoriesContainer> createState() => _CategoriesContainerState();
}


class _CategoriesContainerState extends State<CategoriesContainer> {
  List<MilkItem> milkItems = [
    MilkItem(
        image:
        'https://5.imimg.com/data5/SELLER/Default/2023/5/307757468/YO/AF/VK/21163179/2-l-liquid-packaging-carton-box-500x500.jpg',
        price: '\$ 15',
        weight: '20 mg',
        description: 'Lactaid Fat Free Pure Milk'),
    MilkItem(
      image: 'https://pngimg.com/d/milk_PNG12746.png',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
    MilkItem(
      image:
      'https://p.turbosquid.com/ts-thumb/sX/cj2kre/GXfMFbCd/milkcarton01/png/1488386132/1920x1080/fit_q87/50c99d6ac7dd89d4ccf5439cc012e65338842860/milkcarton01.jpg',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
    MilkItem(
      image:
      'https://p.turbosquid.com/ts-thumb/sX/cj2kre/GXfMFbCd/milkcarton01/png/1488386132/1920x1080/fit_q87/50c99d6ac7dd89d4ccf5439cc012e65338842860/milkcarton01.jpg',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.only(top: 18.h),
      decoration: BoxDecoration(
          color: AppColors.lightGreen.withOpacity(0.6),
          boxShadow: [
            BoxShadow(blurRadius: 55.r, color: AppColors.black.withOpacity(0.2))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/product_listing',arguments: milkItems);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.categoryTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp),
                ),
                const Spacer(),
                Text(
                  "More",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: AppColors.black, fontSize: 12.sp),
                ),
                4.horizontalSpace,
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: AppColors.black,
                  size: 10.h,
                )
              ],
            ),
          ),
        ),
        16.verticalSpace,
        SizedBox(
          height: 180.h,
          width: widget.width,
          child: ListView.builder(
            itemCount: ListOfData().categorys.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      alignment: Alignment.center,
                      width: 150.w,
                      padding: EdgeInsets.symmetric(
                          horizontal: 5.w, vertical: 10.h),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                        border:
                        Border.all(width: 2, color: Colors.transparent),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.transparent,
                            blurRadius: 10.r,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                    MilkItemList().milkItems[index].image),
                                height: 70.h,
                                width: 70.w,
                              ),
                              15.verticalSpace,
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    MilkItemList().milkItems[index].price,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text(
                                    milkItems[index].weight,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: AppColors.black,
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              5.verticalSpace,
                              Text(
                                milkItems[index].description,
                                textAlign: TextAlign.left,
                                style: TextStyle(fontSize: 15.sp),
                              )
                            ],
                          ),
                          Positioned(
                            right: -0,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  // Toggle the opened state of the current item
                                 milkItems[index].openedStates =
                                  !milkItems[index].openedStates ;
                                });
                              },
                              child: DottedBorder(
                                color: AppColors.green,
                                borderType: BorderType.RRect,
                                dashPattern: [3, 8],
                                strokeCap: StrokeCap.butt,
                                strokeWidth: 1.w,
                                borderPadding: EdgeInsets.all(2.0),
                                padding: const EdgeInsets.all(2.0),
                                radius: Radius.circular(20.r),
                                child: AnimatedContainer(
                                  decoration: BoxDecoration(
                                    color: milkItems[index].openedStates
                                        ? AppColors.green.withOpacity(0.1)
                                        : AppColors.white,
                                    border: milkItems[index].openedStates
                                        ? Border.all(
                                        width: 0,
                                        color: Colors.transparent)
                                        : Border.all(
                                        width: 2,
                                        color: AppColors.green),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(50.r)),
                                  ),
                                  duration: const Duration(milliseconds: 0),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 3.h, horizontal: 3.w),
                                  alignment: Alignment.center,
                                  child: milkItems[index].openedStates
                                      ? Icon(
                                    Icons.add,
                                    color: AppColors.green,
                                  )
                                      : Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5.h),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            milkItems[index].itemCount.value++;
                                          milkItems[index].itemCount.notifyListeners();
                                            print(milkItems[index].itemCount.value);
                                          },
                                          child: Icon(
                                            Icons.add,
                                            color: AppColors.black,
                                            size: 20.h,
                                          ),
                                        ),
                                        ValueListenableBuilder(
                                          valueListenable: milkItems[index].itemCount,
                                          builder: (context, value, child) => Text(
                                            milkItems[index].itemCount.value.toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.sp,
                                              fontWeight:
                                              FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (milkItems[index].itemCount.value >0) {
                                               milkItems[index].itemCount.value--;
                                              } else if (milkItems[index].itemCount.value == 0) {
                                                milkItems[index].openedStates =
                                                true;
                                              }
                                            });
                                          },
                                          child: Icon(
                                            Icons.delete,
                                            color: AppColors.red,
                                            size: 14.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}

/// secound Contaner

class CategoriesSecondContainer extends StatefulWidget {
  double width;
  String categoryTitle;
  CategoriesSecondContainer(
      {super.key, required this.width, required this.categoryTitle});

  @override
  State<CategoriesSecondContainer> createState() =>
      _CategoriesSecondContainerState();
}

class _CategoriesSecondContainerState extends State<CategoriesSecondContainer> {
  int currentIndex = 0;
  List<bool> openedStates =
      List<bool>.filled(ListOfData().categorys.length, true);
  List<MilkItem> milkItems = [
    MilkItem(
        image:
        'https://5.imimg.com/data5/SELLER/Default/2023/5/307757468/YO/AF/VK/21163179/2-l-liquid-packaging-carton-box-500x500.jpg',
        price: '\$ 15',
        weight: '20 mg',
        description: 'Lactaid Fat Free Pure Milk'),
    MilkItem(
      image: 'https://pngimg.com/d/milk_PNG12746.png',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
    MilkItem(
      image:
      'https://p.turbosquid.com/ts-thumb/sX/cj2kre/GXfMFbCd/milkcarton01/png/1488386132/1920x1080/fit_q87/50c99d6ac7dd89d4ccf5439cc012e65338842860/milkcarton01.jpg',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
    MilkItem(
      image:
      'https://p.turbosquid.com/ts-thumb/sX/cj2kre/GXfMFbCd/milkcarton01/png/1488386132/1920x1080/fit_q87/50c99d6ac7dd89d4ccf5439cc012e65338842860/milkcarton01.jpg',
      price: '\$ 15',
      weight: '20 mg',
      description: 'Lactaid Fat Free Pure Milk',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18.h),
      decoration: BoxDecoration(
          color: AppColors.lightGreen.withOpacity(0.6),
          boxShadow: [
            BoxShadow(blurRadius: 55.r, color: AppColors.black.withOpacity(0.2))
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.categoryTitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp),
              ),
              const Spacer(),
              Text(
                "More",
                textAlign: TextAlign.left,
                style: TextStyle(color: AppColors.black, fontSize: 12.sp),
              ),
              4.horizontalSpace,
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.black,
                size: 10.h,
              )
            ],
          ),
        ),
        16.verticalSpace,
        Row(
          children: [
            // Define a list to store the opened state of each item
            SizedBox(
              height: 180.h,
              width: widget.width,
              child: ListView.builder(
                itemCount: ListOfData().categorys.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: 150.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 10.h),
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            border:
                            Border.all(width: 2, color: Colors.transparent),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.transparent,
                                blurRadius: 10.r,
                              )
                            ],
                          ),
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  Image(
                                    image: NetworkImage(
                                        MilkItemList().milkItems[index].image),
                                    height: 70.h,
                                    width: 70.w,
                                  ),
                                  15.verticalSpace,
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        MilkItemList().milkItems[index].price,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                      Text(
                                        MilkItemList().milkItems[index].weight,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.black,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  5.verticalSpace,
                                  Text(
                                    MilkItemList().milkItems[index].description,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15.sp),
                                  )
                                ],
                              ),
                              Positioned(
                                right: -0,
                                child: ValueListenableBuilder(
                                  valueListenable: MilkItemList().milkItems[index].itemCount,
                                  builder: (context, value, child) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        // Toggle the opened state of the current item
                                        openedStates[index] =
                                        !openedStates[index];
                                      });
                                    },
                                    child: DottedBorder(
                                      color: AppColors.green,
                                      borderType: BorderType.RRect,
                                      dashPattern: const [3, 8],
                                      strokeCap: StrokeCap.butt,
                                      strokeWidth: 1.w,
                                      borderPadding: EdgeInsets.all(2.0),
                                      padding: const EdgeInsets.all(2.0),
                                      radius: Radius.circular(20.r),
                                      child: AnimatedContainer(
                                        decoration: BoxDecoration(
                                          color: openedStates[index]
                                              ? AppColors.green.withOpacity(0.1)
                                              : AppColors.white,
                                          border: openedStates[index]
                                              ? Border.all(
                                              width: 0,
                                              color: Colors.transparent)
                                              : Border.all(
                                              width: 2,
                                              color: AppColors.green),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50.r)),
                                        ),
                                        duration: const Duration(milliseconds: 0),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 3.h, horizontal: 3.w),
                                        alignment: Alignment.center,
                                        child: openedStates[index]
                                            ? Icon(
                                          Icons.add,
                                          color: AppColors.green,
                                        )
                                            : Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 5.h),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  MilkItemList().milkItems[index].itemCount.value++;
                                                  MilkItemList().milkItems[index].itemCount.notifyListeners();
                                                  print(MilkItemList().milkItems[index].itemCount.value);
                                                },
                                                child: Icon(
                                                  Icons.add,
                                                  color: AppColors.black,
                                                  size: 20.h,
                                                ),
                                              ),
                                              Text(
                                                MilkItemList().milkItems[index].itemCount.value.toString(),
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16.sp,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    if (MilkItemList().milkItems[index].itemCount.value >0) {
                                                      MilkItemList().milkItems[index].itemCount.value--;
                                                    } else if (MilkItemList().milkItems[index].itemCount.value == 0) {
                                                      openedStates[index] =
                                                      true;
                                                    }
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.delete,
                                                  color: AppColors.red,
                                                  size: 14.h,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Center(
                  child: IconButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.white)),
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 35.h,
                      color: AppColors.green,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
