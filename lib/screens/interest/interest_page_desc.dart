import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/core/forms/host_top_menu_gradient.dart';
import 'package:flutter/material.dart';

import 'components/interest_page_data.dart';
import 'components/interest_select_menu_desc_house.dart';

class InterestPageDesc extends StatelessWidget {
  const InterestPageDesc({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageAddress()),
            );
          },
        ),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFFda1364,
              color2: 0xFF931da2,
              text1: 'Possui moradia',
              text2: 'previamente cadastrada?',
            ),
            InterestSelectMenuDescHouse(
              onpressed: () {},
            )
          ],
        ));
  }
}
