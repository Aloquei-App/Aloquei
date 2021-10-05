import 'package:flutter/material.dart';

class TitleOffers extends StatelessWidget {
  final String title;

  TitleOffers(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: Text(
          this.title,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 25, fontFamily: 'Arial'),
        ),
      ),
    );
  }
}
