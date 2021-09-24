import 'package:flutter/material.dart';

class TitleLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        'Entre ou cadastre-se no Aloquei',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 20, fontFamily: 'Arial'),
      ),
    );
  }
}
