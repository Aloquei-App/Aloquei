import 'package:aloquei_app/screens/core/forms/title_subtitle_button.dart';
import 'package:flutter/material.dart';

class InterestSelectPet extends StatelessWidget {
  final VoidCallback onpressed;

  const InterestSelectPet({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          TitleSubtitleButton(
              title: 'Sim',
              subtitle: 'Sim, gosto de animais',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Não',
              subtitle: 'Prefiro ambientes sem animais',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Tanto faz',
              subtitle: 'Não tenho preferência',
              onpressed: () {}),
        ],
      ),
    );
  }
}
