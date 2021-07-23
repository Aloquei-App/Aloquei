import 'package:flutter/material.dart';

class HelpPageSubtitle extends StatelessWidget {
  final String text;

  const HelpPageSubtitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 17,
          ),
        ));
  }
}
