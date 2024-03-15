import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
   const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Un-Named Routes",style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageViewer(index: index)));
                });

              },
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://climate.nasa.gov/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbjRyIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0a7f9ec62ad04559ccea084556300e01789e456a/9827327865_98e0f0dc2d_o.jpg"),
                ),
                title: Text("Sea " + index.toString()),
                subtitle: Text("Ocean view if sea $index"),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ImageViewer extends StatelessWidget {
  int? index;
    ImageViewer({super.key,required this.index});
    
  @override
  Widget build(BuildContext context) {
    SnackBar snackBar=SnackBar(content: Text("Sea $index is marked as a favourite"));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Sea $index",style: const TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://climate.nasa.gov/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBbjRyIiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--0a7f9ec62ad04559ccea084556300e01789e456a/9827327865_98e0f0dc2d_o.jpg"),)
                )
              ),

      ]
            ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },child: Icon(Icons.favorite,color: Colors.red,),) ,
      ),
    );
  }
}
