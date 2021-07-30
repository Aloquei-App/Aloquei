import 'package:aloquei_app/screens/hosting/host_page_three.dart';
import 'package:flutter/material.dart';

class HostInputText extends StatelessWidget {
  final String text;

  HostInputText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
          ),
        ));
  }
}
