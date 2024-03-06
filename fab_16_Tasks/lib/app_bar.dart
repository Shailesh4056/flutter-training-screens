import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({super.key});

  @override
  State<AppbarDemo> createState() => _AppbarDemoState();
}

class _AppbarDemoState extends State<AppbarDemo> {

  ThemeMode _themeMode = ThemeMode.system;
  bool isWhite = false;


  void themeModes(ThemeMode themeMode,status){
    setState(() {
      _themeMode = themeMode;
      isWhite = status;
      print(isWhite);
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Appbar Demo"),
          centerTitle: true,
          backgroundColor: isWhite ? Colors.orange : Colors.black,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {
              themeModes(ThemeMode.light, true);
            }, icon: const Icon(Icons.light_mode, size: 90.2,)),

            SizedBox(
              height: 500,
            ),
            IconButton(onPressed: () {
              themeModes(ThemeMode.dark, false);
            }, icon: Icon(Icons.dark_mode, size: 90.2,)),
          ],
        ),
      ),
    );
  }
}