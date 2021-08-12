import 'package:aloquei_app/screens/hosting/components/host_title_subtitle_button.dart';
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
          HostTitleSubtitleButton(
              title: 'Hotel',
              subtitle:
                  'Uma empresa que oferece quartos inteiros, suítes ou acomodações únicas para os hóspedes.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Albergue',
              subtitle:
                  'Uma empresa de hospitalidade que aluga camas em dormitórios compartilhados e quartos inteiros.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Resort',
              subtitle:
                  'Uma empresa de hospitalidade com mais comodidades e serviços do que um hotel.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Alojamento ecológico',
              subtitle:
                  'Uma empresa que oferece acomodações perto de ambientes naturais, como florestas ou montanhas.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Hotel boutique',
              subtitle:
                  'Uma empresa de hospitalidade com um tema ou estilo único que define sua identidade.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Apart-hotel',
              subtitle:
                  'Um lugar com comodidades oferecidas em hotéis e quartos que parecem apartamentos.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Flat',
              subtitle:
                  'Um apartamento com comodidades oferecidas em hotéis atendido por uma empresa de gestão profissional.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Hotel patrimonial',
              subtitle:
                  'Um edifício transformado em acomodação para hóspedes na Índia.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Kezhan',
              subtitle:
                  'Um lugar para ficar com estilo local e comodidades sofisticadas na China.',
              onpressed: () {}),
        ]));
  }
}
