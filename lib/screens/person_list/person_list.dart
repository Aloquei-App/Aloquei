import '../core/colors.dart';
import '../rental_list/components/list_title.dart';
import '../rental_list/components/present_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../rental_list/components/rental_unit_card.dart';

class PersonList extends StatelessWidget {
  const PersonList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index == 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        )
                      ],
                    )
                  : SizedBox(),
              Slidable(
                actionPane: SlidableDrawerActionPane(),
                actionExtentRatio: 0.25,
                child: ModelItemCard(
                  "https://upload.wikimedia.org/wikipedia/commons/e/ed/112_Ocean_Avenue_%281973%29_2.jpg",
                  "Amytivylle",
                  "Ronald DeFeo Jr.",
                  "09/fev/2020 - 15/fev/2020",
                ),
                actions: [
                  IconSlideAction(
                      caption: 'Apagar',
                      color: redAirbnb,
                      icon: Icons.delete,
                      onTap: () {}),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
