import 'package:flutter/material.dart';

class DefaultText extends StatelessWidget {
  final String text;

  const DefaultText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        textAlign: TextAlign.justify,
        style: TextStyle(
          color: Color(0xFF585858),
          fontSize: 16,
        ),
      ),
    );
  }
}
