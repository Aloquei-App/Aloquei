import 'package:flutter/material.dart';

import '../hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/core/forms/host_top_menu_gradient.dart';
import 'components/interest_page_description.dart';
import 'components/interest_select_menu_pet.dart';

class InterestPagePet extends StatelessWidget {
  const InterestPagePet({Key key}) : super(key: key);

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
              MaterialPageRoute(
                  builder: (context) => InterestPageDescription()),
            );
          },
        ),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFFda1364,
              color2: 0xFF931da2,
              text1: 'Preferência ',
              text2: 'por pets no ambiente?',
            ),
            InterestSelectPet(
              onpressed: () {},
            )
          ],
        ));
  }
}
