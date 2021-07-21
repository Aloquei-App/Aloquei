import 'package:flutter/material.dart';

import '../../core/colors.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ContinueButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        'Continuar',
        style: TextStyle(
          fontSize: 17,
          color: Colors.white,
        ),
      ),
      color: redAirbnb,
      height: MediaQuery.of(context).size.width * 0.12,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      onPressed: onPressed,
    );
  }
}
