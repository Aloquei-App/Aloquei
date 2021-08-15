import 'package:aloquei_app/screens/rental_list/components/subtitle_rental_present_card.dart';
import 'package:aloquei_app/screens/rental_list/components/title_rental_present_card.dart';
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
          TitleRentalPresentCard("Chegou a hora de alugar a sua moradia!"),
          SubtitleRentalPresentCard(
              "Tenha uma experiência incrível! Hospede hoje mesmo e tenha benefícios no app."),
        ],
      ),
    );
  }
}
