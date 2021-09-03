import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_price.dart';
import 'package:aloquei_app/screens/core/forms/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_review.dart';

import 'package:flutter/material.dart';

class HostPagePrice extends StatelessWidget {
  const HostPagePrice({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Revise seu anúncio',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageReview()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                TopMenuGradient(
                  color1: 0xFFae1a88,
                  color2: 0xFF8b1fa6,
                  text1: 'Agora vem a parte',
                  text2: 'divertida: definir seu preço',
                ),
                HostSelectMenuPrice(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
