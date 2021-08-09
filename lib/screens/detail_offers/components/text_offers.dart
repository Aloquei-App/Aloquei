import 'package:flutter/material.dart';

class TextOffers extends StatelessWidget {
  final String text;

  TextOffers(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
      child: Text(
        this.text,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 24, fontFamily: 'Arial'),
      ),
    );
  }
}
