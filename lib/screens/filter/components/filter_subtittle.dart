import 'package:flutter/material.dart';

class FilterSubTitle extends StatelessWidget {
  final String subTitleText;

  const FilterSubTitle({Key key, this.subTitleText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 10, bottom: 10),
        alignment: Alignment.centerLeft,
        child: Text(
          subTitleText,
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ));
  }
}
