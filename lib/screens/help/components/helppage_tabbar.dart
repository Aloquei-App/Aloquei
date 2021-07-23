import 'package:flutter/material.dart';

class HelpPageTab extends StatelessWidget {
  final String text;

  const HelpPageTab({Key key, this.text}) : super(key: key);

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
