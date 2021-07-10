import 'package:flutter/material.dart';

class DefaultInput extends StatelessWidget {
  final String text;
  final Function validator;
  final TextEditingController controller;
  const DefaultInput({
    Key key,
    this.text,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: text,
      ),
      validator: validator,
    );
  }
}
