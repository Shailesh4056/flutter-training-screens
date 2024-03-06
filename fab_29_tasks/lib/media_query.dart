import 'package:flutter/material.dart';
class MediaQueryDemo extends StatefulWidget {
  const MediaQueryDemo({super.key});

  @override
  State<MediaQueryDemo> createState() => _MediaQueryDemoState();
}

class _MediaQueryDemoState extends State<MediaQueryDemo> {


  @override
  Widget build(BuildContext context) {
    final  mediaTextScale=  MediaQuery.of(context).textScaler;
    final  mediaWidth=  MediaQuery.of(context).size.width;
    final  mediaheight=  MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Builder(builder: (context){
        if(MediaQuery.of(context).orientation==Orientation.portrait){
          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.5,
                color: Colors.red,
                child:  Text("Media Query$mediaTextScale\n Container width $mediaWidth \n Container width $mediaheight,"),
              ),
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height*0.4,
                color: Colors.yellow,
                child:  Text("Media Query$mediaTextScale\n Container width $mediaWidth \n Container width $mediaheight,"),
              )
            ],
          );
        }
        else{
          return Row(
            children: [
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.35,
                color: Colors.red,
                child:  Text("Media Query$mediaTextScale\n Container width $mediaWidth \n Container width $mediaheight,"),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.35,
                color: Colors.yellow,
                child:  Text("Media Query$mediaTextScale\n Container width $mediaWidth \n Container width $mediaheight,"),
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.30,
                color: Colors.blue,
                child:  Text("Media Query$mediaTextScale\n Container width $mediaWidth \n Container width $mediaheight,"),
              )
            ],
          );
        }
      }),
    );
  }
}
