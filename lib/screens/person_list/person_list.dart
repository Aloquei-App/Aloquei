import 'package:aloquei_app/screens/rental_list/components/rental_present_card.dart';
import 'package:aloquei_app/screens/rental_list/components/rental_title.dart';
import 'package:aloquei_app/screens/rental_list/components/rental_unit_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonList extends StatelessWidget {
  const PersonList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RentalTitle("Pessoas "),
            RentalPresentCard(
              icon: FontAwesomeIcons.peopleArrows,
              title: "Faça novas amizades, aumente seu networking.",
              subtitle:
                  "Tenha experiências únicas e incríveis! Basta estar aberto.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RentalTitle("Suas Pessoas"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    physics: ScrollPhysics(),
                    child: RentalUnitCard(
                      "https://upload.wikimedia.org/wikipedia/commons/e/ed/112_Ocean_Avenue_%281973%29_2.jpg",
                      "Amytivylle",
                      "Ronald DeFeo Jr.",
                      "09/fev/2020 - 15/fev/2020",
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
