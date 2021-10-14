import 'package:flutter/material.dart';

class InputValue extends StatelessWidget {
  final String text;
  final Function onChanged;

  InputValue({Key key, this.text, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
          ),
        ));
  }
}
