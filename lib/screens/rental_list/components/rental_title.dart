import 'package:flutter/material.dart';

class RentalTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Text(
        'Moradias',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 24, fontFamily: 'Arial'),
      ),
    );
  }
}
