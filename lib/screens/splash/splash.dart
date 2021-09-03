import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFf2f2f2),
      child: Center(
        child: Icon(
          FontAwesomeIcons.airbnb,
          size: 70,
          color: Color(0xFFdbdbdb),
        ),
      ),
    );
  }
}
