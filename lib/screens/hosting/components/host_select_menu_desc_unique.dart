import 'package:flutter/material.dart';

import '../../core/forms/title_subtitle_button.dart';

class HostSelectMenuDescUnique extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuDescUnique({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          TitleSubtitleButton(
              title: 'Celeiro',
              subtitle:
                  'Um espaço usado para armanezar grãos, gado ou artigos agrícolas que foi transformado em acomodação.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Barco',
              subtitle:
                  'Um barco, veleiro ou iate ancorado durante as visitas dos hóspedes. Não é uma casa flutuante.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Ônibus',
              subtitle:
                  'Um veiculo transformado em acomodação com uma decoração interna original.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Trailer',
              subtitle:
                  'Uma caravana ou trailer de acampamento que funciona como casa e veículo.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa na árvore',
              subtitle:
                  'Um lugar para ficar construído no tronco ou galhos de uma árvore.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Acampamento',
              subtitle:
                  'Uma área de terra onde os hóspedes podem montar tendas, iurtas, trailers ou microcasas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Castelo',
              subtitle:
                  'Um edifício majestoso e possivelmente histórico que pode ter torres e fossos.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Caverna',
              subtitle:
                  'Uma formação subterrânea natural em uma encosta ou penhasco.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa de cúpula',
              subtitle:
                  'Uma casa com telhado abobadado ou forma esférica, como uma casa-bolha.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa-terra',
              subtitle:
                  'Uma casa construída dentro ou abaixo do solo ou feita de materiais como terra batida.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Hotel-fazenda',
              subtitle:
                  'Uma acomodação rural onde os hóspedes podem interagir com aniamis ou fazer caminhadas e artesanato.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Parque de férias',
              subtitle:
                  'Um lote de terra com cabanas ou acampamentos na Austrália ou Nova Zelândia.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casa flutuante',
              subtitle:
                  'Uma casa que flutua, que pode ser um barco usado como residência ou uma casa.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Casebre',
              subtitle:
                  'Uma casa feita de madeira ou barro que pode ter um telhado de palha',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Iglu',
              subtitle:
                  'Uma estrutura em forma de cúpula feita de neve e gelo encontrada em climas frios.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Ilha',
              subtitle: 'Um pedaço de terra cercado por água.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Torre de farol',
              subtitle:
                  'Uma torre perto da água com uma luz brilhante que ajuda a guiar as embarcações.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Avião',
              subtitle:
                  'Uma aeronave que foi transformada em uma lugar para ficar.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Rancho',
              subtitle:
                  'Uma casa em um grande terreno usado para cultivo ou criação de gado.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Edifício religioso',
              subtitle:
                  'Um espaço que servia como lugar religioso como igreja ou mesquita, transformado em acomodação.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Cabana do pastor',
              subtitle:
                  'Um pequeno vagão sobre rodas usado originalmente para guiar rebanhos de ovelhas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Contêiner de Transporte',
              subtitle:
                  'Um contêiner de aço que já foi usado para transportar mercadorias transformado em acomodação.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Tenda',
              subtitle:
                  'Uma estrutura normalmente portátil e dobrável feita de tecido e estacas.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Microcasa',
              subtitle:
                  'Uma casa independente que geralmente tem menos de 37 metros quadrados.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Tenda tipi',
              subtitle:
                  'Uma tenda em forma de cone sustentada por estacas com uma porta basculante e teto aberto.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Torre',
              subtitle:
                  'Uma estrutura indepentente com vários andares e vista.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Trem',
              subtitle:
                  'Um vagão contêiner ou outro tipo de carro sobre trilhos transformado em acomodação.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Moinho de vento',
              subtitle:
                  'Uma estrutura com velas ou lâminas usadas para gerar energia eólica e com um espaço para moradia.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Iurta',
              subtitle:
                  'Uma tenda arredondada construída sobre uma estrutura de madeira dobrável.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Riad',
              subtitle:
                  'Uma casa tradicional com um pátio ao ar livre ou jardim no Marrocos',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Pensão coreana',
              subtitle:
                  'Uma casa com churrasqueira e espaço comum na zona rural da Coreia.',
              onpressed: () {}),
          TitleSubtitleButton(title: 'Outros', subtitle: '', onpressed: () {}),
        ]));
  }
}
