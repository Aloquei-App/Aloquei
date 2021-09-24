import 'package:flutter/material.dart';

class InputValue extends StatelessWidget {
  final String text;

  InputValue({Key key, this.text}) : super(key: key);

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
