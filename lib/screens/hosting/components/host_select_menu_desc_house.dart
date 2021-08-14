import 'package:aloquei_app/screens/core/forms/title_subtitle_button.dart';
import 'package:flutter/material.dart';

class HostSelectMenuDescHouse extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuDescHouse({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          TitleSubtitleButton(
              title: 'Casa Residencial',
              subtitle:
                  'Uma casa que pode ser independente ou ter paredes compartilhadas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Cabana',
              subtitle:
                  'Uma casa feita com materiais naturais, como madeira, e construída em meio à natureza.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Vila',
              subtitle:
                  'Uma casa de luxo que pode ter espaços interiores e exteriores, jardins e piscinas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Townhouse',
              subtitle:
                  'Uma casa geminada que pode ter paredes compartilhadas e espaços ao ar livre.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa de campo',
              subtitle:
                  'Uma casa acolhedora construída em uma área rural ou perto de um lago ou praia.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Bangalô',
              subtitle:
                  'Uma casa de um andar com uma ampla varanda na frente e um telhado inclinado.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa-terra',
              subtitle:
                  'Uma casa construída dentro ou abaixo do solo ou feita de materiais como terra batida.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa Flutuante',
              subtitle:
                  'Uma casa que flutua, que pode ser um barco usado como residência ou uma casa.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casebre',
              subtitle:
                  'Uma casa feita de madeira ou barro que pode ter um telhado de palha.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Hotel-fazenda',
              subtitle:
                  'Uma acomodação rural onde os hóspedes podem interagir com animais ou fazer caminhadas e artesanato.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa de cúpula',
              subtitle:
                  'Uma casa com telhado abobadado ou forma esférica, como uma casa-bolha.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa cicládica',
              subtitle:
                  'Uma casa branca com um telhado plano encontrada nas ilhas Cíclades, na Grécia.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Chalé',
              subtitle:
                  'Uma casa de madeira com um telhado inclinado popular para viagens de esqui ou estadias de verão.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Dammuso',
              subtitle:
                  'Uma casa de pedra com telhado abobadado na ilha de Pantelária.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Torre de farol',
              subtitle:
                  'Uma torre perto da água com uma luz brilhante que ajuda a guiar as embarcações.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Cabana de pastor',
              subtitle:
                  'Um pequeno vagão sobre rodas usado originalmente para guiar rebanhos de ovelhas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Microcasa',
              subtitle:
                  'Uma casa independete que geralmente tem menos de 37 metros quadrados.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Trullo',
              subtitle:
                  'Uma casa arredondada de pedra com um telhado em forma de cone, originária da Itália.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa particular',
              subtitle:
                  'Um quarto inteiro em uma casa que parece uma pousada em Cuba.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Pensão coreana',
              subtitle:
                  'Uma casa com churrasqueira e espaço comum na zona rural da Coreia.',
              onpressed: () {}),
        ]));
  }
}
