import 'package:flutter/material.dart';

class HostSelectMenuEight extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuEight({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Container(
              margin: EdgeInsets.all(15),
              height: 120,
              child: TextField(
                maxLines: 7,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w800),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Lovely 1-bedroom rental unit in Varanasi',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
              ))
        ]));
  }
}
