import 'package:flutter/material.dart';

class HostSelectMenuNine extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuNine({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Container(
              margin: EdgeInsets.all(15),
              height: 200,
              child: TextField(
                maxLines: 7,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Give a brief description of your page',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                ),
              ))
        ]));
  }
}
