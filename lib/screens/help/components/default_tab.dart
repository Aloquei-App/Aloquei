import 'package:flutter/material.dart';

class DefaultTab extends StatelessWidget {
  final String text;

  const DefaultTab({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(),
      ),
    );
  }
}
