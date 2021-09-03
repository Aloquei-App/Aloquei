import 'package:flutter/material.dart';

import '../core/forms/host_top_menu_gradient.dart';
import 'components/host_bottombar.dart';
import 'components/host_select_menu_desc_house.dart';
import 'host_page_type_size.dart';

class HostPageDesc extends StatelessWidget {
  const HostPageDesc({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageTypeSize()),
            );
          },
        ),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFFda1364,
              color2: 0xFF931da2,
              text1: 'Qual desses melhor',
              text2: 'descreve o seu local?',
            ),
            HostSelectMenuDescHouse(
              onpressed: () {},
            )
          ],
        ));
  }
}
