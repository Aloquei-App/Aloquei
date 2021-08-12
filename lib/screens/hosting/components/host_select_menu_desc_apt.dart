import 'package:aloquei_app/screens/hosting/components/host_title_subtitle_button.dart';
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
          HostTitleSubtitleButton(
              title: 'Apartamento',
              subtitle:
                  'Um lugar alugado que faz parte de um prédio ou complexo residencial com várias unidades.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Condomínio(Condo)',
              subtitle:
                  'Um lugar em um prédio ou complexo com várias unidades pertencentes aos moradores',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Loft',
              subtitle:
                  'Um apartamento ou condomínio de conceito aberto, que pode ter paredes interiores pequenas.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Flat',
              subtitle:
                  'Um apartamento com comodidades oferecidas em hotéis atendido por uma empresa de gestão profissional.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Casa particular',
              subtitle:
                  'Um quarto inteiro em uma casa que parece uma pousada em Cuba.',
              onpressed: () {}),
        ]));
  }
}
