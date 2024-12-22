import 'package:flutter/material.dart';

class ContactGridView extends StatelessWidget {
  var contacts;
  ContactGridView({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return Card(
            child: Column(
          children: [
            Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: CircleAvatar(
                    child: Icon(
                  Icons.person,
                  size: 30,
                ))),
            SizedBox(height: 40),
            Text(
              contact['name']!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(contact['phone']!)
          ],
        ));
      },
    );
  }
}
