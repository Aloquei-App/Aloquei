import '../../core/forms/title_subtitle_button.dart';
import 'package:flutter/material.dart';

class HostSelectMenuDescApt extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuDescApt({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          TitleSubtitleButton(
              title: 'Apartamento',
              subtitle:
                  'Um lugar alugado que faz parte de um prédio ou complexo residencial com várias unidades.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Condomínio(Condo)',
              subtitle:
                  'Um lugar em um prédio ou complexo com várias unidades pertencentes aos moradores',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Loft',
              subtitle:
                  'Um apartamento ou condomínio de conceito aberto, que pode ter paredes interiores pequenas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Flat',
              subtitle:
                  'Um apartamento com comodidades oferecidas em hotéis atendido por uma empresa de gestão profissional.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa particular',
              subtitle:
                  'Um quarto inteiro em uma casa que parece uma pousada em Cuba.',
              onpressed: () {}),
        ]));
  }
}
