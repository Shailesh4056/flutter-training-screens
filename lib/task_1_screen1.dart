
import 'package:flutter/material.dart';


enum  Ringtone {none,classic,monophonic,luna}
enum  CheckBoxColors {red,green,blue,purple,orange}

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  Ringtone? _ringtone;
     bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Android-style alert dialog"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(onPressed: (){
            showDialog(context: context, builder: (context) {
              return  AlertDialog(
                title: const Text("Basic Dialog Title"),
                content: const Text("An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content."),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: const Text("Ok"))
                ],
              );
              
            },);
          }, child: const Text("Info dialogs")),
          TextButton(onPressed: (){
            showDialog(barrierDismissible: false,context: context, builder: (context) {
              return AlertDialog(
                title: const Text("Info dialogs"),
                content: const Text("An alert dialog (also known as a basic dialog) informs the user about situations that require acknowledgment. An alert dialog has an optional title and an optional list of actions. The title is displayed above the content and the actions are displayed below the content."),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: const Text("AGREE")),
                  TextButton(onPressed: (){
                    Navigator.canPop(context);
                  }, child: const Text("DISAGREE"))
                ],
              );
            },);
          }, child: const Text("Confirmation dialog")),
          TextButton(onPressed: (){
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: Text("Phone Ringtone"),
                content: SizedBox(
                  height: 300,
                  child: StatefulBuilder(
                    builder: (context, setState) =>  Column(
                      children: [
                        ListTile(
                            title: Text(Ringtone.none.name),
                            leading: Radio(
                              fillColor: MaterialStateProperty.all(Colors.deepOrange),
                              value: Ringtone.none,
                              groupValue: _ringtone,
                              onChanged: (Ringtone? value){
                                setState(() {
                                  _ringtone = value;
                                });
                              },
                            )
                        ),
                        ListTile(
                            title: Text(Ringtone.classic.name),
                            leading: Radio(
                              value: Ringtone.classic,
                              groupValue: _ringtone,
                              onChanged: (Ringtone? value){
                                setState(() {
                                  _ringtone = value;
                                });
                              },
                            )
                        ),
                        ListTile(
                            title: Text(Ringtone.luna.name),
                            leading: Radio(
                              value: Ringtone.luna,
                              groupValue: _ringtone,
                              onChanged: (Ringtone? value){
                                setState(() {
                                  _ringtone = value;
                                });
                              },
                            )
                        ),
                        ListTile(
                            title: Text(Ringtone.monophonic.name),
                            leading: Radio(
                              value: Ringtone.monophonic,
                              groupValue: _ringtone,
                              onChanged: (Ringtone? value){
                                setState(() {
                                  _ringtone = value;
                                });
                              },
                            )
                        ),

                      ],
                    ),
                  ),
                ),
              );
            },);
          }, child: const Text("Single Choice dialogs")),
          TextButton(onPressed: (){
            showDialog(context: context, builder: (context) {
              return AlertDialog(
                title: const Text("Your preferred color"),
                content: SizedBox(
                  height: 300,
                  child: StatefulBuilder(
                    builder: (context, setState) =>  Column(
                      children: [
                        ListTile(
                            title: Text(CheckBoxColors.red.name),
                            leading: Checkbox(
                              value: isCheck,
                              onChanged: (bool? value){
                                setState((){
                                  isCheck =value!;
                                });
                              },

                            )
                        ),
                        ListTile(
                            title: Text(CheckBoxColors.green.name),
                            leading: Checkbox(
                              value: isCheck,
                              onChanged: (value){
                                setState((){
                                  isCheck =value!;
                                });
                              },

                            )
                        ),
                        ListTile(
                            title: Text(CheckBoxColors.blue.name),
                            leading: Checkbox(
                              value: isCheck,
                              onChanged: (value){
                                setState((){
                                  isCheck = value!;
                                });
                              },

                            )
                        ),
                        ListTile(
                            title: Text(CheckBoxColors.purple.name),
                            leading: Checkbox(
                              value: isCheck,
                              onChanged: (value){
                                setState((){
                                  isCheck = value!;
                                });
                              },

                            )
                        ),
                        ListTile(
                            title: Text(CheckBoxColors.orange.name),
                            leading: Checkbox(
                              value: isCheck,
                              onChanged: (value){
                                setState((){
                                  isCheck =value!;
                                });
                              },

                            )
                        ),

                      ],
                    ),
                  ),
                ),
              );
            });
          }, child: const Text("Multiple dialogs"))
        ],
      ),
    );
  }
}
