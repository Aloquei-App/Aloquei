import 'package:flutter/material.dart';

class DefaultHelpSubtitle extends StatelessWidget {
  final String text;

  const DefaultHelpSubtitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF212121),
            fontSize: 17,
          ),
        ));
  }
}
