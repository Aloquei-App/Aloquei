import 'package:flutter/material.dart';

class PersonalInfoTitle extends StatelessWidget {
  const PersonalInfoTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        "Editar Informações Pessoais",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 30),
      ),
    );
  }
}
