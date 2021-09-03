import 'package:flutter/material.dart';

class HostSelectMenuDescription extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuDescription({Key key, this.onpressed}) : super(key: key);

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
                  hintText: 'Escreva uma breve descrição do seu local',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w800),
                ),
              ))
        ]));
  }
}
