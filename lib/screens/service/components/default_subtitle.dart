import 'package:flutter/material.dart';

class DefaultSubtitle extends StatelessWidget {
  final String text;

  const DefaultSubtitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Text(
          text,
          style: TextStyle(
              color: Color(0xFF474747),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ));
  }
}
