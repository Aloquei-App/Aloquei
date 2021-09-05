import 'package:flutter/material.dart';

class FilterTitle extends StatelessWidget {
  final String titleText;

  const FilterTitle({Key key, this.titleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(20),
        child: Text(
          titleText,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        ));
  }
}
