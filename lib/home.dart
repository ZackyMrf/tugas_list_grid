import 'package:flutter/material.dart';
import 'package:tugas_list_grid0124/contactDummy.dart';
import 'package:tugas_list_grid0124/view/contact_grid_view.dart';
import 'package:tugas_list_grid0124/view/contact_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  bool isList = true;

  @override
  Widget build(BuildContext context) {
    // Function untuk merender sesuai kondisi state
    Expanded view() {
      if (isList) {
        return Expanded(child: ContactListView(contacts: contactDummy));
      } else {
        return Expanded(child: ContactGridView(contacts: contactDummy));
      }
    }

    return Scaffold(
      appBar: AppBar(
          title: isList
              ? Text('Contact App List View')
              : Text('Contact App Grid View'),
          backgroundColor:
              Color(0xFF89A8B2) // => 0xFF89A8B2 adalah kode hexa warna,
          ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Switch(
              value: isList,
              onChanged: (value) {
                setState(() {
                  isList = value;
                });
              },
            ),
          ),
          view(),
        ],
      ),
    );
  }
}
