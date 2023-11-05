/// Type: Static ListView => ListView only with ListTile
/// ListTile: A single fixed-height row that typically contains
/// some text as well as a leading or trailing icon.
/// Link: https://docs.flutter.dev/cookbook/lists/basic-list

import 'package:flutter/material.dart';

class ListViewExample3 extends StatefulWidget {
  const ListViewExample3({Key? key}) : super(key: key);

  @override
  State<ListViewExample3> createState() => _ListViewExample3State();
}

class _ListViewExample3State extends State<ListViewExample3> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
      ],
    );
  }
}
