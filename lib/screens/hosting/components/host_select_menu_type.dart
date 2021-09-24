import 'package:flutter/material.dart';

import 'host_text_image_button.dart';

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
            text: 'Apartamento',
            image: 'assets/apartment.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Casa',
            image: 'assets/house.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'República',
            image: 'assets/frat.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Unidade secundária',
            image: 'assets/secondaryUnit.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Acomodação única',
            image: 'assets/uniqueSpace.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Pousada',
            image: 'assets/bed.jpg',
            ontap: () {},
          ),
          HostTextImageButton(
            text: 'Hotel Boutique',
            image: 'assets/boutiqueHotel.jpg',
            ontap: () {},
          ),
        ]));
  }
}
