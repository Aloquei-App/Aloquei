import 'package:aloquei_app/screens/core/forms/top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/interest/components/flow_builder_functions.dart';
import 'package:flutter/material.dart';

import '../../core/forms/title_subtitle_button.dart';

class InterestSelectMenuDescHouse extends StatelessWidget {
  const InterestSelectMenuDescHouse({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
        ),
        body: Column(children: [
          TopMenuGradient(
            color1: 0xFFda1364,
            color2: 0xFF931da2,
            text1: 'Já possui',
            text2: 'uma casa?',
          ),
          Expanded(
            child: ListView(
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                children: [
                  TitleSubtitleButton(
                    title: 'Sim',
                    subtitle: 'Já tenho moradia cadastrada.',
                    onpressed: () =>
                        continuePressed(hasHouse: true, context: context),
                  ),
                  TitleSubtitleButton(
                      title: 'Não',
                      subtitle: 'Não tenho moradia cadastrada.',
                      onpressed: () =>
                          continuePressed(hasHouse: false, context: context)),
                ]),
          ),
        ]));
  }
}
