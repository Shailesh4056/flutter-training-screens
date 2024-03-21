import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:surprise_test/home_screen.dart';
import 'package:surprise_test/models/colors.dart';
import 'items_screen.dart';
import 'models/custom_bottom_bar.dart';
import 'welcome_screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark//or set color with: Color(0xFF0000FF)
    ));
    return ScreenUtilInit(
      builder: (context, child) =>
          MaterialApp(
            theme: ThemeData(

              bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.pink),
              fontFamily: 'Poppins',
              useMaterial3: true,
                canvasColor: AppColors.lightYellow
            ),
            home: const ItemsScreen(),
            debugShowCheckedModeBanner: false,
          ),
      designSize:  const Size(430,932),
    );
  }
}