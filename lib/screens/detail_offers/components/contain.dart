import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  final int guests, bedroom, beds, bath;

  Contain(this.guests, this.bedroom, this.beds, this.bath);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        child: Row(
          children: [
            Text(
              this.guests.toString() + ' guests • ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: 'Arial'),
            ),
            Text(
              this.bedroom.toString() + ' bedroom • ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: 'Arial'),
            ),
            Text(
              this.beds.toString() + ' beds • ',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: 'Arial'),
            ),
            Text(
              this.bath.toString() + ' bath',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: 'Arial'),
            ),
          ],
        ));
  }
}
