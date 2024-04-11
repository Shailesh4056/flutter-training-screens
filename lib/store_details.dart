import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:march_27_tasks/generated/assets.dart';
import 'package:march_27_tasks/model/colors.dart';

import 'custom_fields.dart';

class StoreDetails extends StatefulWidget {
  const StoreDetails({super.key});

  @override
  State<StoreDetails> createState() => _StoreDetailsState();
}

class _StoreDetailsState extends State<StoreDetails> {
  @override
  void initState() {
    super.initState();
  }

  int currentIndex = 0;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final previousIndex = ModalRoute.of(context)!.settings.arguments as int?;
    print(previousIndex);
    Future waitingConnection() async{
      await Future.delayed(Duration(seconds: 5));
    }
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                )),
            centerTitle: true,
            title: const Text(
              "Store Details",
              style: TextStyle(color: Colors.white),
            ),
            expandedHeight: 200.h,
            floating: false,
            automaticallyImplyLeading: false,
            actions: [
              Stack(
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
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )),
                ],
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Stack(
                children: [
                  const Image(
                    image: AssetImage(Assets.imagesStore),
                    fit: BoxFit.cover,
                    height: 205,
                    width: double.infinity,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 70.h),
                    color: Colors.black.withOpacity(0.4),
                  ),
                  Positioned(
                      left: 20.w,
                      right: 20.w,
                      top: 110.h,
                      child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/storeMenu',arguments: previousIndex);
                          },
                          child: customContainer(previousIndex)))
                ],
              ),
            ),
          )
        ];
      },
      body: Scaffold(
        body: SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                TabBar(
                  indicatorColor: Colors.transparent,
                  automaticIndicatorColorAdjustment: true,
                  isScrollable: false,
                  tabAlignment: TabAlignment.fill,
                  padding: EdgeInsets.zero,
                  labelPadding: const EdgeInsets.symmetric(horizontal: 2),
                  indicatorPadding: EdgeInsets.zero,
                  onTap: (value) {},
                  tabs: [
                    Container(
                        color: Colors.green.withOpacity(0.2),
                        child: const Center(
                            child: Tab(
                          child: Text(
                            "About Us",
                          ),
                        ))),
                    Container(
                        color: Colors.green.withOpacity(0.2),
                        child: const Center(
                            child: Tab(
                          child: Text("Reviews"),
                        ))),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    FutureBuilder(
                      future: waitingConnection(),
                      builder:(context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return Container(
                            alignment: Alignment.center,
                            child:  CircularProgressIndicator(
                              strokeWidth: 6,
                              color: Colors.red,
                              strokeAlign: 2,
                              backgroundColor: AppColors.lightGray,

                            ),
                          );
                        }
                        else if (snapshot.hasError){
                          return Text(snapshot.error.toString());
                        }
                        else{
                          return Container(
                            padding:
                            EdgeInsets.only(left: 20.w, right: 20.w, top: 20.w),
                            child: Text(
                              """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum""",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.left,
                            ),
                          );
                        }
                      },
                    ),

                    FutureBuilder(
                      future: waitingConnection(),
                      builder:(context, snapshot) {
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return Container(
                            alignment: Alignment.center,
                            child:  CircularProgressIndicator(
                              strokeWidth: 6,
                              color: Colors.red,
                              strokeAlign: 2,
                              backgroundColor: AppColors.lightGray,

                            ),
                          );
                        }
                        else if (snapshot.hasError){
                          return Text(snapshot.error.toString());
                        }
                        else{
                          return ListView.builder(
                            itemCount: 15,
                            itemBuilder: (context, index) => Column(
                              children: [
                                customReviewsContainer(),
                                const Divider(),
                              ],
                            ),
                          );
                        }
                      },
                    ),

                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
