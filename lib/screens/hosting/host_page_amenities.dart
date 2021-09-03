import '../core/forms/host_top_menu_gradient.dart';
import 'components/host_bottombar.dart';
import 'components/host_select_menu_amenities.dart';
import 'host_page_photos.dart';

import 'package:flutter/material.dart';

class HostPageAmenities extends StatelessWidget {
  const HostPageAmenities({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPagePhotos()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                TopMenuGradient(
                  color1: 0xFFd61566,
                  color2: 0xFF8b1fa6,
                  text1: 'Informe aos hóspedes o',
                  text2: 'que seu espaço tem para oferecer',
                ),
                HostSelectMenuAmenities(
                  onpressed: () {},
                ),
              ],
            )));
  }
}