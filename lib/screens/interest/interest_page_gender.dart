import '../core/forms/title_subtitle_button.dart';
import 'package:flutter/material.dart';

import '../core/forms/host_top_menu_gradient.dart';
import '../core/navigation.dart';
import '../hosting/components/host_bottombar.dart';
import 'components/flow_builder_functions.dart';

class InterestPageGender extends StatelessWidget {
  const InterestPageGender({Key key}) : super(key: key);

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
            navigateToInterestPet(context);
          },
        ),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFFda1364,
              color2: 0xFF931da2,
              text1: 'Preferência',
              text2: 'por gênero?',
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                children: [
                  TitleSubtitleButton(
                    title: 'Masculino',
                    subtitle: 'Preferência pelo gênero masculino',
                    onpressed: () => continuePressed(
                        desiredGender: "Masculino", context: context),
                  ),
                  TitleSubtitleButton(
                    title: 'Feminino',
                    subtitle: 'Preferência pelo gênero feminino',
                    onpressed: () => continuePressed(
                        desiredGender: "Feminino", context: context),
                  ),
                  TitleSubtitleButton(
                    title: 'Outros',
                    subtitle: 'Não tenho preferência por gêneros',
                    onpressed: () => continuePressed(
                        desiredGender: "Não tenho preferência por gêneros",
                        context: context),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
