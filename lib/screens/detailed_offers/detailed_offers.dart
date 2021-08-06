import 'package:aloquei_app/screens/core/colors.dart';
import 'package:aloquei_app/screens/detailed_offers/components/row_components.dart';
import 'package:aloquei_app/screens/login/components/title_offers.dart';
import 'package:flutter/material.dart';

import 'components/bottom_navigation.dart';
import 'components/carousel_options.dart';
import 'components/custom_app_bar.dart';
import 'components/description_offers.dart';
import 'components/description_offers_grey.dart';
import 'components/divide.dart';
import 'components/elements.dart';
import 'components/text_offers.dart';
import 'components/row_components.dart';

class DetaildePage extends StatelessWidget {
  final List<String> imageList = [
    "https://www.voltaaomundo.pt/files/2017/07/da6741e5_original-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/1-18-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/2-18-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/3-17-741x486_c.jpg"
  ];
  final String title = "Tunico House seu espaco de paz";
  final String text = 'Entire residential home hosted by Adriane';
  final String text_desc = 'Entire residential home';
  final String description = 'Oriental, Rio Grande do Sul Brasil';
  final int guests = 2;
  final int bedroom = 2;
  final int beds = 2;
  final int bath = 1;
  final int value = 1846;
  final String dateInit = 'Set 1';
  final String dateFinal = 'Out 2';

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
            DescriptionOffers(text_desc),
            Components(guests, bedroom, beds, bedroom),
            Divide(),
            Elements(Icons.house_outlined, 'Casa inteira',
                'Voce tem a casa inteira'),
            Elements(Icons.house_outlined, 'Casa inteira',
                'Voce tem a casa inteira'),
            Elements(Icons.house_outlined, 'Casa inteira',
                'Voce tem a casa inteira'),
            Elements(
                Icons.house_outlined, 'Casa inteira', 'Voce tem a casa inteira')
          ],
        ),
        bottomNavigationBar: BottomNavigation(value, dateInit, dateFinal));
  }
}
