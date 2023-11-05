/// Create a horizontal list using ListView and scrollDirection
/// Link: https://docs.flutter.dev/cookbook/lists/horizontal-list

import 'package:flutter/material.dart';

class ListViewExample5 extends StatefulWidget {
  const ListViewExample5({Key? key}) : super(key: key);

  @override
  State<ListViewExample5> createState() => _ListViewExample5State();
}

class _ListViewExample5State extends State<ListViewExample5> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 200,
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160,
            color: Colors.red,
          ),
          Container(
            width: 160,
            color: Colors.blue,
          ),
          Container(
            width: 160,
            color: Colors.green,
          ),
          Container(
            width: 160,
            color: Colors.yellow,
          ),
          Container(
            width: 160,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
