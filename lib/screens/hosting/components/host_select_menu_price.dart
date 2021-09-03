import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HostSelectMenuPrice extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuPrice({Key key, this.onpressed}) : super(key: key);

  Pattern get whitelistedPattern => null;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Container(
              padding: EdgeInsets.only(top: 25, bottom: 5, left: 90, right: 90),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
                decoration: InputDecoration(
                  isDense: true,
                  contentPadding: EdgeInsets.all(40),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                  hintText: 'R\$',
                ),
              )),
          Container(
            child: Center(
                child: Text(
              'por noite',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
            )),
          )
        ]));
  }
}
