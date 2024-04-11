import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fast_contacts/fast_contacts.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  Future<List<Contact>> contactDetails() async {
    bool isGranted = await Permission.contacts.status.isGranted;
    print(isGranted);
    if (isGranted == false) {
      isGranted = await Permission.contacts
          .request()
          .isGranted;
    }
    if (isGranted) {
      return await FastContacts.getAllContacts();
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact List",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: contactDetails(),
        builder: (context,  snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.data == null) {
            print(snapshot.data!.length);
            return Center(
              child: CircularProgressIndicator(),
            );
          }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                Contact contact = snapshot.data![index];
                // print(contact.displayName);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        contact.displayName,
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contact.phones[0].number,
                          ),
                          Text(
                            contact.organization.toString(),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            // Handle delete action
                          });
                        },
                      ),
                    ),
                  ],
                );
              },
            );
        },
      ),
    );
  }
}
