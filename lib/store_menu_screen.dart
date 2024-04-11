import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_fields.dart';
import 'generated/assets.dart';
import 'model/colors.dart';
import 'model/data_list.dart';

class StoreMenuScreen extends StatefulWidget {
  const StoreMenuScreen({super.key});

  @override
  State<StoreMenuScreen> createState() => _StoreMenuScreenState();
}
class _StoreMenuScreenState extends State<StoreMenuScreen> {

  @override
  initState() {
    setState(() {

    });
    super.initState();
  }


    List<Map<String, dynamic>> categorys = [
    {
      'title': 'Dairy & Eggs',
      'image':
          'https://toppng.com/uploads/preview/food-bag-11549473152auxkiwypqo.png'
    },
    {
      'title': 'Snacks',
      'image':
          'https://www.pngall.com/wp-content/uploads/4/Grocery-PNG-Free-Download.png',
    },
    {
      'title': 'Seafood',
      'image':
          'https://freepngimg.com/thumb/grocery/53730-5-grain-hd-download-free-image-thumb.png',
    },
    {
      'title': 'Frozen Foods',
      'image':
          'https://w7.pngwing.com/pngs/1014/259/png-transparent-pantry-supermarket-food-price-abarrotes-food-convenience-food-food-storage-thumbnail.png',
    },
    {
      'title': 'Dairy & Eggs',
      'image':
          'https://toppng.com/uploads/preview/food-bag-11549473152auxkiwypqo.png'
    },
    {
      'title': 'Snacks',
      'image':
          'https://www.pngall.com/wp-content/uploads/4/Grocery-PNG-Free-Download.png',
    },
    {
      'title': 'Seafood',
      'image':
          'https://freepngimg.com/thumb/grocery/53730-5-grain-hd-download-free-image-thumb.png',
    },
    {
      'title': 'Frozen Foods',
      'image':
          'https://w7.pngwing.com/pngs/1014/259/png-transparent-pantry-supermarket-food-price-abarrotes-food-convenience-food-food-storage-thumbnail.png',
    }
  ];
  int currentIndex = 0;
  bool containerSize = false;
  @override
  Widget build(BuildContext context) {
    final previousIndex = ModalRoute.of(context)!.settings.arguments as int?;
    Future waitingConnection() async{
      await Future.delayed(Duration(seconds: 2));
    }
    print(previousIndex);
    return NestedScrollView(
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
              title: Text(
                ListOfData().storeDetails[previousIndex!]['title'],
                style: TextStyle(color: Colors.white),
              ),
              expandedHeight: 242.h,
              floating: false,
              automaticallyImplyLeading: false,
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 8.sp),
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
                  ),
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: AppColors.black.withOpacity(0.2), blurRadius: 50)
                  ]),
                  child: Stack(
                    children: [
                      Image(
                        image: const AssetImage(Assets.imagesStore),
                        fit: BoxFit.cover,
                        height: 242.h,
                        width: double.infinity,
                      ),
                      Container(
                        height: 242.h,
                        margin: EdgeInsets.only(bottom: 18.h),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: CircleAvatar(
                                radius: 40.r,
                                backgroundImage: NetworkImage(ListOfData()
                                    .storeDetails[previousIndex!]['imageUrl']),
                              ),
                            ),
                            11.verticalSpace,
                            Text(
                              ListOfData().storeDetails[previousIndex!]
                                  ['address'],
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9),
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                            11.verticalSpace,
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.w),
                              child: TextFormField(
                                decoration: InputDecoration(

                                    prefixIcon:
                                        const Icon(Icons.search_rounded),
                                    fillColor: AppColors.lightGray,
                                    filled: true,
                                    hintText: "Search ${Text(ListOfData().storeDetails[previousIndex!]['title'])}",
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius:
                                            BorderRadius.circular(50.r))),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ];
        },
        body: Scaffold(
            body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

              child: FutureBuilder(
                future: waitingConnection(),
                builder:(context, snapshot) {
                  if(snapshot.connectionState == ConnectionState.waiting){
                    return Container(
                      alignment: Alignment.center,
                      child:  Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 6,
                          color: Colors.red,
                          strokeAlign: 2,
                          backgroundColor: AppColors.lightGray,

                        ),
                      ),
                    );
                  }
                  else if (snapshot.hasError){
                    return Text(snapshot.error.toString());
                  }
                  else{
                    return  SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20, top: 20),
                              decoration: BoxDecoration(
                                  color: AppColors.lightGreen,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 55.r,
                                        color: AppColors.black.withOpacity(0.2))
                                  ]),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Choose your Category",
                                      style: TextStyle(
                                          color: AppColors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18.sp),
                                    ),
                                    16.verticalSpace,
                                    SizedBox(
                                      height: 120.h,
                                      child: ListView.builder(
                                        itemCount: categorys.length,
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (BuildContext context, int index) {
                                          return Container(
                                            padding: const EdgeInsets.all(10),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  alignment: Alignment.center,
                                                  padding: EdgeInsets.all(10.h),
                                                  decoration: BoxDecoration(
                                                      color: AppColors.white,
                                                      borderRadius:
                                                      BorderRadius.circular(70.r),
                                                      border: currentIndex == index
                                                          ? Border.all(
                                                          width: 2,
                                                          color: AppColors.green)
                                                          : Border.all(
                                                          width: 2,
                                                          color: Colors.transparent),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: AppColors.green
                                                                .withOpacity(0.3),
                                                            blurRadius: 10.r)
                                                      ]),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(40.r),
                                                      child: Image(
                                                        image: NetworkImage(
                                                            categorys[index]['image']),
                                                        height: 45.h,
                                                        width: 50.w,
                                                      )),
                                                ),
                                                15.verticalSpace,
                                                Text(
                                                  categorys[index]['title'],
                                                  style: currentIndex == index
                                                      ? TextStyle(
                                                      color: AppColors.green,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w600)
                                                      : TextStyle(
                                                      color: AppColors.black,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w600),
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ]),
                            ),
                            15.verticalSpace,
                            CategoriesContainer(
                              width: double.infinity,
                              categoryTitle: "Milk",
                            ),
                            15.verticalSpace,
                            CategoriesSecondContainer(
                              categoryTitle: "Ice cream",
                              width: 250.w,
                            )
                          ]),
                    );
                  }
                },
              ),
        )));
  }
}
