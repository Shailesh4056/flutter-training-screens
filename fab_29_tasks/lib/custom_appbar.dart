import 'package:flutter/material.dart';

 class CustomAppbar extends StatelessWidget implements PreferredSize{
  final String titleMain;

  const CustomAppbar({super.key,required this.titleMain});
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleMain,style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.blue,
      centerTitle: true,

    );
  }



}
