import 'package:fab_29_tasks/model/contact_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ListItemRowWidget extends StatelessWidget {
  const ListItemRowWidget({super.key,required this.model});
  final ContactDetails model;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.height*1,
          decoration:  BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Name:- ${model.name}",style: GoogleFonts.roboto(),),
              Text("Email:- ${model.email}",style: GoogleFonts.aBeeZee(),),
              Text("mobile Number:- ${model.contactNumber}}"),
            ],
          ),
        ),
      ],
    );;
  }
}
