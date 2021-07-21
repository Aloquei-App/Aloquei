import 'package:aloquei_app/screens/core/colors.dart';
import 'package:flutter/material.dart';

import 'components/carousel_options.dart';
import 'components/custom_app_bar.dart';

class DetaildePage extends StatelessWidget {
  final List<String> imageList = [
    "https://www.voltaaomundo.pt/files/2017/07/da6741e5_original-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/1-18-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/2-18-741x486_c.jpg",
    "https://www.voltaaomundo.pt/files/2017/07/3-17-741x486_c.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: CustomAppBar(),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            Expanded(
                child: Stack(
              children: <Widget>[
                CarouselOffers(imageList),
              ],
            ))
          ],
        )); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
