import 'package:flutter/material.dart';

class ContactListView extends StatelessWidget {
  var contacts;
  ContactListView({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text(contact['name']!),
            subtitle: Text(contact['phone']!),
            trailing: Icon(Icons.more_vert),
          ),
        );
      },
    );
  }
}
