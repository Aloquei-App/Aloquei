import 'package:aloquei_app/blocs/auth/auth_bloc.dart';
import 'package:aloquei_app/screens/core/app_bars/default_app_bar.dart';
import 'package:flutter/material.dart';

import 'components/rental_present_card.dart';
import 'components/rental_title.dart';
import 'components/rental_unit_card.dart';

class RentalList extends StatelessWidget {
  const RentalList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            RentalTitle("Moradias"),
            RentalPresentCard(),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: RentalTitle("Suas Moradias"),
            ),
            RentalUnitCard(
              "https://upload.wikimedia.org/wikipedia/commons/e/ed/112_Ocean_Avenue_%281973%29_2.jpg",
              "Amytivylle", 
              "Ronald DeFeo Jr.",
              "09/fev/2020 - 15/fev/2020",
            ),
          ],
        ),
      ),
    );
  }
}
