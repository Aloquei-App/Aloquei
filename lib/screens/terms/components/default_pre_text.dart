import 'package:flutter/material.dart';

class DefaultPreText extends StatelessWidget {
  final String text;

  const DefaultPreText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xFF474747),
            fontSize: 16,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
