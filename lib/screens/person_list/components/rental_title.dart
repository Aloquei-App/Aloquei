import 'package:flutter/material.dart';

class RentalTitle extends StatelessWidget {
  final String text;

  const RentalTitle(this.text);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 32, fontFamily: 'Arial'),
      ),
    );
  }
}
