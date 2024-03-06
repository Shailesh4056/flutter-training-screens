import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'listitem_row.dart';
import 'model/contact_details.dart';
import 'package:google_fonts/google_fonts.dart';

class DynamicListview extends StatefulWidget {
  const DynamicListview({super.key});

  @override
  State<DynamicListview> createState() => _DynamicListviewState();
}
List<ContactDetails> contactDetails = [
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
  ContactDetails("Uttam sharma", "Uttam2002@gmail.com", 7041026463),
  ContactDetails("Anurag sharma", "Anurag2002@gmail.com", 7041126469),
  ContactDetails("Shail sharma", "Shail2002@gmail.com", 7041021469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7047026469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
  ContactDetails("Shailesh sharma", "Shailesh2002@gmail.com", 7041026469),
];
class _DynamicListviewState extends State<DynamicListview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(preferredSize: Size.fromHeight(50.0),
      child: CustomAppbar(
        titleMain: "Home Page",
      )),
      body: Scaffold(
        body: Container(
          child: ListView.builder(itemCount: contactDetails.length,itemBuilder: (BuildContext context,int index){
            return ListItemRowWidget(model: contactDetails[index],);
          }),
        ),
      ),
    );
  }
}
