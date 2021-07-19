import 'package:flutter/material.dart';

class TOSTitle extends StatelessWidget {
  const TOSTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
      child: Text(
        "Termos de Serviço",
        style: TextStyle(
            color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 35),
      ),
    );
  }
}