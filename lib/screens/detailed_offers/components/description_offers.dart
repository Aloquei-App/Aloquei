import 'package:flutter/material.dart';

class DescriptionOffers extends StatelessWidget {
  final String text;

  DescriptionOffers(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
      child: Text(
        this.text,
        style: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 18, fontFamily: 'Arial'),
      ),
    );
  }
}
