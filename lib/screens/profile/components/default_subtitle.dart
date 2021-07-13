import 'package:flutter/material.dart';

class DefaultSubtitle extends StatelessWidget {
  final String text;

  const DefaultSubtitle({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 5, left: 20),
      child:
          Text(text, style: TextStyle(fontSize: 15, color: Color(0xFF7f7f7f))),
    );
  }
}
