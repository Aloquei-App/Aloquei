import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_guest_num.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_amenities.dart';

import 'package:flutter/material.dart';

class HostPageGuestNum extends StatelessWidget {
  const HostPageGuestNum({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageAmenities()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuGradient(
                  color1: 0xFFd1156c,
                  color2: 0xFF8b1fa6,
                  text1: 'Quantos hóspedes você',
                  text2: 'gostaria de acomodar?',
                ),
                HostSelectMenuGuestNum(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
