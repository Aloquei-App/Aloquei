import 'package:flutter/material.dart';

class TitleOffers extends StatelessWidget {
  final String title;
  TitleOffers(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
      child: Text(
        this.title,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 40, fontFamily: 'Arial'),
      ),
    );
  }
}
