import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model/routes.dart';

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
  void initState() {
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) =>  const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: Routers.generateRoute,
      ),
      designSize: ScreenUtil.defaultSize,
    );
  }
}

