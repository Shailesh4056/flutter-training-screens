import 'package:flutter/material.dart';
enum Notification  {notificationOn, notificationOff}
class ScreenThree extends StatefulWidget {
  const ScreenThree({super.key});

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  Notification _notification = Notification.notificationOn;
  bool light = true;
  bool dark = true;

  /// checkbox var
  bool isCheck = true;
  bool isCheck2 = true;
  bool isCheck3 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(

        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.7,
            child: ListView(
              children:  [
                 const Text("Toggle",style: TextStyle(fontWeight: FontWeight.bold)),
                ListTile(
                  title: const Text("Cellular data"),
                  trailing: Switch(value: light, onChanged: (value){
                    setState(() {
                      light = value;
                    });
                  }),
                ),
                const Divider(),
                ListTile(
                  title: const Text("Wi-Fi",style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Switch(
                    value: dark,
                     onChanged: (bool value){
                      setState(() {
                        dark = value;
                      });
                     },
                  ),
                ),
                const Divider(),
                const Text("Single Check",style: TextStyle(fontWeight: FontWeight.bold)),
                ListTile(
                  title: const Text("Allow notification"),
                  trailing: Radio(
                    value: Notification.notificationOn,
                    groupValue: _notification,
                    onChanged:(Notification? value){
                      setState(() {
                        _notification = value!;
                      });
                    },
                  ),
                ),
                 const Divider(),
                 ListTile(
                  title: const Text("Turn Off Notification"),
                   trailing: Radio(
                     value: Notification.notificationOff,
                     groupValue: _notification,
                     onChanged: (Notification? value){
                       setState(() {

                         _notification = value!;
                       });
                     },
                   ),
                ),
               const Divider(),
                const Text("Multiple check",style: TextStyle(fontWeight: FontWeight.bold)),
                ListTile(
                  title: const Text("Microphone check"),
                  trailing: Checkbox(
                    value: isCheck,
                    onChanged: (newBool){
                      setState(() {
                        isCheck = newBool!;
                      });
                },
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text("Location Access"),
                  trailing: Checkbox(
                    value: isCheck2,
                    onChanged: (newBool){
                      setState(() {
                        isCheck2 = newBool!;
                      });
                    },
                  ),
                ),
                const Divider(),
                ListTile(
                  title: const Text("Haptics"),
                  trailing: Checkbox(
                    value: isCheck3,
                    onChanged: (newBool){
                      setState(() {
                        isCheck3 = newBool!;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
