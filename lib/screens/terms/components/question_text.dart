import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 70),
      child: Text(
        'Você recebeu a ajuda que necessitava?',
        style: TextStyle(
            color: Color(0xFF2a2a2a),
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
