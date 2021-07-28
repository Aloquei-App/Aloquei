import 'package:aloquei_app/screens/hosting/components/host_text_image_button.dart';
import 'package:flutter/material.dart';

class HostSelectMenuOne extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuOne({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          HostTextImageButton(
            text: 'Apartment',
            image: 'assets/apartment.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'House',
            image: 'assets/house.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Secondary unit',
            image: 'assets/secondaryUnit.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Unique space',
            image: 'assets/uniqueSpace.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Bed and breakfast',
            image: 'assets/bed.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Boutique hotel',
            image: 'assets/boutiqueHotel.jpg',
            ontap: () {},
          ),
        ]));
  }
}
