import 'package:flutter/material.dart';

class DescriptionOffers extends StatelessWidget {
  final String text;
  final String email;
  final String telefone;

  DescriptionOffers(this.text, this.email, this.telefone);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0, left: 30.0, right: 30.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          this.text,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 16, fontFamily: 'Arial'),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Contato',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Arial'),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "${this.email} - ${this.telefone}",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 14, fontFamily: 'Arial'),
        ),
      ]),
    );
  }
}
