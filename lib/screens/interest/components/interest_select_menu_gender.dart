import 'package:flutter/material.dart';

import '../../core/forms/title_subtitle_button.dart';

class InterestSelectGender extends StatelessWidget {
  final VoidCallback onpressed;

  const InterestSelectGender({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        children: [
          TitleSubtitleButton(
              title: 'Masculino',
              subtitle: 'Preferência pelo gênero masculino',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Feminino',
              subtitle: 'Preferência pelo gênero feminino',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Outros',
              subtitle: 'Não tenho preferência por gêneros',
              onpressed: () {}),
        ],
      ),
    );
  }
}
