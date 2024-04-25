import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surprise_test2/resours/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var pathDirectory = await getApplicationDocumentsDirectory();
  print(pathDirectory);
  Hive.init(pathDirectory.path);
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
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        initialRoute: '/',
        onGenerateRoute: Routers.generateRoute,
      ),
      designSize: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height),
    );
  }
}
