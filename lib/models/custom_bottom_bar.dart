import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test/home_screen.dart';
import 'package:surprise_test/models/colors.dart';

import '../generated/assets.dart';
import '../items_screen.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 87,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(31.r),
          topLeft: Radius.circular(31.r),
        ),
        child: BottomNavigationBar(
          currentIndex: newCurrentIndex,
          onTap: (newIndex) {
            setState(() {
              newCurrentIndex = newIndex;
            });
          },
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.white.withOpacity(0.4),
          showUnselectedLabels: true,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.groups,
              ),
              label: "Team",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(Assets.imagesVectoricon,color: Colors.white.withOpacity(0.4),),
              label: "Tourna",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: "History",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
