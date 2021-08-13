import 'package:flutter/material.dart';

class DescriptionOffersGrey extends StatelessWidget {
  final String text;

  DescriptionOffersGrey(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 10.0),
      child: Text(
        this.text,
        style: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 12, fontFamily: 'Arial'),
      ),
    );
  }
}
