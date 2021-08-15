import 'package:aloquei_app/screens/rental_list/components/subtitle_rental_present_card.dart';
import 'package:aloquei_app/screens/rental_list/components/title_rental_present_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RentalPresentCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const RentalPresentCard({Key key, this.title, this.subtitle, this.icon})
      : super(key: key);
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
              icon,
              size: 70,
              color: Colors.pinkAccent,
            ),
          ),
          TitleRentalPresentCard(title),
          SubtitleRentalPresentCard(subtitle),
        ],
      ),
    );
  }
}
