import 'package:flutter/material.dart';

class SubtitleRentalPresentCard extends StatelessWidget {
  final String text;
  const SubtitleRentalPresentCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Text(
        text,
        textAlign: TextAlign.center,
        softWrap: true,
        style: TextStyle(
          fontSize: 18,
          color: Colors.black38,
          fontFamily: 'Roboto',
        ),
      ),
    );
  }
}
