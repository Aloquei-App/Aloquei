import 'package:flutter/material.dart';

class Component extends StatelessWidget {
  final String text;

  Component(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Text(
        this.text,
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 16, fontFamily: 'Arial'),
      ),
    );
  }
}
