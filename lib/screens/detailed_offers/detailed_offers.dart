import 'package:aloquei_app/screens/core/colors.dart';
import 'package:aloquei_app/screens/login/components/title_offers.dart';
import 'package:flutter/material.dart';

import 'components/carousel_options.dart';
import 'components/custom_app_bar.dart';
import 'components/description_offers.dart';
import 'components/description_offers_grey.dart';
import 'components/divide.dart';
import 'components/text_offers.dart';

class DetaildePage extends StatelessWidget {
  final List<String> imageList = [
    "https://www.voltaaomundo.pt/files/2017/07/da6741e5_original-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/1-18-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/2-18-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/3-17-741x486_c.jpg"
  ];
  final String title = "Tunico House seu espaco de paz";
  final String text = 'Entire residential home hosted by Adriane';
  final String description = 'Oriental, Rio Grande do Sul Brasil';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        extendBodyBehindAppBar: true,
        body: ListView(
          children: [
            Stack(
              children: <Widget>[
                CarouselOffers(imageList),
                CustomAppBar(),
              ],
            ),
            TitleOffers(title),
            DescriptionOffersGrey(description),
            Divide(),
            TextOffers(text),
            DescriptionOffers(text),
          ],
        ));
  }
}
