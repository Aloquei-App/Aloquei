import 'package:flutter/material.dart';

class InputValue extends StatelessWidget {
  final String text;
  final Function onChanged;
  final bool isNumber;

  InputValue({Key key, this.text, this.onChanged, this.isNumber = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
        child: TextFormField(
          keyboardType: isNumber ? TextInputType.number : TextInputType.text,
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
          ),
        ));
  }
}
