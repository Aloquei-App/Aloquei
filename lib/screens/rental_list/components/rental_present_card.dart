import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RentalPresentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 320,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Icon(
              // Icons.wallet_travel_sharp,
              FontAwesomeIcons.suitcase,
              size: 70,
              color: Colors.pinkAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              "Chegou a hora de alugar a sua moradia!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 27,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              "Tenha uma experiência incrível! Hospede hoje mesmo e tenha benefícios no app.",
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black38,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
