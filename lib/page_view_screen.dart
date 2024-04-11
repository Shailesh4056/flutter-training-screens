import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/generated/assets.dart';
import 'package:march_27_tasks/login_screen.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController _pageController = PageController();
  List images = [Assets.images9C4I,Assets.imagesSecoundPageView,Assets.imagesThirdPageView];
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Positioned(
              right: 27,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                  },
                  child: Text(
                    currentIndex==images.length-1?
                    "":"Skip",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ))),
          PageView(
            clipBehavior: Clip.hardEdge,
            physics: const BouncingScrollPhysics(),
            padEnds: true,
            pageSnapping: true,
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            children: [
              firstPageContainer(images[currentIndex], "Near by store and Product",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
              firstPageContainer(
                  images[currentIndex],
                  "Secure Payment Method",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
              firstPageContainer(
                  images[currentIndex],
                  "Chat with Supplier",
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.."),
            ],
          ),
          Positioned(
            bottom: 20.h,
            left: 20.w,
            right: 20.w,
            child: Row(
              children:[
                DotsIndicator(
                  onTap: (value) {
                    setState(() {
                      currentIndex = value;
                      _pageController.animateToPage(value,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceIn);
                    });
                  },
                  dotsCount: 3,
                  position: currentIndex,
                  decorator: DotsDecorator(
                    activeColor: Colors.green,
                    size: const Size.square(10.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
                const Spacer(),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Colors.green,
                        )),
                    onPressed: () {
                      setState(() {
                        currentIndex==images.length-1? Navigator.pushNamed(context, '/login') :
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.bounceIn);
                      } as VoidCallback);
                    },
                    child: Text(
                      currentIndex == images.length-1 ?
                      "Go":"Next",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ))
              ]
            ),
          )
        ],
      ),
    ));
  }
}

Widget firstPageContainer(String imagePath, titleText, hintText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      95.verticalSpace,
      Image(
        image: AssetImage(imagePath),
        height: 250.h,
        fit: BoxFit.cover,
      ),
      59.verticalSpace,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 50.w),
        child: Text(
          titleText,
          textAlign: TextAlign.left,
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 18.sp),
        ),
      ),
      31.verticalSpace,
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: Text(
          hintText,
          style: TextStyle(fontSize: 14.sp),
        ),
      )
    ],
  );
}
