import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  final String text;

  const DefaultTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xFF4e4e4e),
            fontSize: 31,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
