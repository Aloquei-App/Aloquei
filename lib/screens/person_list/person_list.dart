import 'package:aloquei_app/screens/rental_list/components/list_title.dart';
import 'package:aloquei_app/screens/rental_list/components/present_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../rental_list/components/rental_unit_card.dart';

class PersonList extends StatelessWidget {
  const PersonList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            ListTitle("Pessoas "),
            PresentCard(
              icon: FontAwesomeIcons.peopleArrows,
              title: "Faça novas amizades, aumente seu networking.",
              subtitle:
                  "Tenha experiências únicas e incríveis! Basta estar aberto.",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListTitle("Suas Pessoas"),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ModelItemCard(
                    "https://upload.wikimedia.org/wikipedia/commons/e/ed/112_Ocean_Avenue_%281973%29_2.jpg",
                    "Amytivylle",
                    "Ronald DeFeo Jr.",
                    "09/fev/2020 - 15/fev/2020",
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
