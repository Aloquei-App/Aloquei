import 'package:aloquei_app/screens/core/colors.dart';
import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  const Article({Key key, this.text, this.ontap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(text, style: TextStyle(fontSize: 17, color: greyAirbnb)),
      trailing: Icon(Icons.arrow_forward_ios),
      onTap: ontap,
    );
  }
}