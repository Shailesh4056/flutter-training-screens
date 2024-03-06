import 'package:fab_29_tasks/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleFontsDemo extends StatefulWidget {
  const GoogleFontsDemo({super.key});

  @override
  State<GoogleFontsDemo> createState() => _GoogleFontsDemoState();
}

class _GoogleFontsDemoState extends State<GoogleFontsDemo> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppbar(
        titleMain: "Google fonts",
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Google Fonts",style: GoogleFonts.aBeeZee(color: Colors.cyan)),
            Text("Google Fonts",style: GoogleFonts.abrilFatface(color: Colors.purple)),
            Text("Google Fonts",style: GoogleFonts.roboto(color: Colors.lime)),
            Text("Google Fonts",style: GoogleFonts.abrilFatface(color: Colors.red)),
            Text("Google Fonts",style: GoogleFonts.roadRage(color: Colors.cyan)),
            Text("Google Fonts",style: TextStyle(fontFamily: 'Ojuju'))

          ],
        ),
      ),
    );
  }
}
