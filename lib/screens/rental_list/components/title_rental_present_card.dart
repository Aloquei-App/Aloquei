import 'package:flutter/material.dart';

class TitleRentalPresentCard extends StatelessWidget {
  final String text;

  const TitleRentalPresentCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 27,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
