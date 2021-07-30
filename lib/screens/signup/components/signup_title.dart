import 'package:flutter/material.dart';

class SignupTitle extends StatelessWidget {
  const SignupTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        "Adicione as suas informações",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 23),
      ),
    );
  }
}
