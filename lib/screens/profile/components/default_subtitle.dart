import 'package:flutter/material.dart';

class DefaultSubtitle extends StatelessWidget {
  final String text;

  const DefaultSubtitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 5, left: 28),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          color: Color(0xFF7f7f7f),
        ),
      ),
    );
  }
}
