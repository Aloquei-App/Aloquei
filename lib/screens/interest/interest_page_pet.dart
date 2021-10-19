import 'package:aloquei_app/screens/core/forms/title_subtitle_button.dart';
import 'package:aloquei_app/screens/explore/explore.dart';
import 'package:aloquei_app/screens/interest/components/flow_builder_functions.dart';
import 'package:flutter/material.dart';

import '../core/forms/host_top_menu_gradient.dart';
import '../core/navigation.dart';
import '../hosting/components/host_bottombar.dart';

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
            navigateToInterestPage(context);
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
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                children: [
                  TitleSubtitleButton(
                      title: 'Sim',
                      subtitle: 'Sim, gosto de animais',
                      onpressed: () {
                        Navigator.of(context, rootNavigator: true).pop(context);
                        sendData(likesPets: true, context: context);
                      }),
                  TitleSubtitleButton(
                      title: 'Não',
                      subtitle: 'Prefiro ambientes sem animais',
                      onpressed: () {
                        Navigator.of(context, rootNavigator: true).pop(context);
                        sendData(likesPets: false, context: context);
                      }),
                  /*TitleSubtitleButton(
                      title: 'Tanto faz',
                      subtitle: 'Não tenho preferência',
                      onpressed: () {}),*/
                ],
              ),
            ),
          ],
        ));
  }
}
