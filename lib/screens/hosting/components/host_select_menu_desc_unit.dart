import '../../core/forms/title_subtitle_button.dart';
import 'package:flutter/material.dart';

class HostSelectMenuDescUnit extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuDescUnit({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          TitleSubtitleButton(
              title: 'Casa de hóspedes',
              subtitle:
                  'Um lugar alugado que faz parte de um prédio ou complexo residencial com várias unidades.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Suíte de hóspedes',
              subtitle:
                  'Um espaço com uma entrada privada dentro de uma estrutura maior ou anexada a ela.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Hotel-fazenda',
              subtitle:
                  'Uma acomodação rural onde os hóspedes podem interagir com animais ou fazer caminhadas e artesanato.',
              onpressed: () {})
        ]));
  }
}
