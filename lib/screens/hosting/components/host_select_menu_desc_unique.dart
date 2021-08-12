import 'package:aloquei_app/screens/hosting/components/host_title_subtitle_button.dart';
import 'package:flutter/material.dart';

class HostSelectMenuDescUnique extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuDescUnique({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          HostTitleSubtitleButton(
              title: 'Celeiro',
              subtitle:
                  'Um espaço usado para armanezar grãos, gado ou artigos agrícolas que foi transformado em acomodação.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Barco',
              subtitle:
                  'Um barco, veleiro ou iate ancorado durante as visitas dos hóspedes. Não é uma casa flutuante.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Ônibus',
              subtitle:
                  'Um veiculo transformado em acomodação com uma decoração interna original.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Trailer',
              subtitle:
                  'Uma caravana ou trailer de acampamento que funciona como casa e veículo.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Casa na árvore',
              subtitle:
                  'Um lugar para ficar construído no tronco ou galhos de uma árvore.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Acampamento',
              subtitle:
                  'Uma área de terra onde os hóspedes podem montar tendas, iurtas, trailers ou microcasas.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Castelo',
              subtitle:
                  'Um edifício majestoso e possivelmente histórico que pode ter torres e fossos.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Caverna',
              subtitle:
                  'Uma formação subterrânea natural em uma encosta ou penhasco.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Casa de cúpula',
              subtitle:
                  'Uma casa com telhado abobadado ou forma esférica, como uma casa-bolha.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Casa-terra',
              subtitle:
                  'Uma casa construída dentro ou abaixo do solo ou feita de materiais como terra batida.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Hotel-fazenda',
              subtitle:
                  'Uma acomodação rural onde os hóspedes podem interagir com aniamis ou fazer caminhadas e artesanato.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Parque de férias',
              subtitle:
                  'Um lote de terra com cabanas ou acampamentos na Austrália ou Nova Zelândia.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Casa flutuante',
              subtitle:
                  'Uma casa que flutua, que pode ser um barco usado como residência ou uma casa.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Casebre',
              subtitle:
                  'Uma casa feita de madeira ou barro que pode ter um telhado de palha',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Iglu',
              subtitle:
                  'Uma estrutura em forma de cúpula feita de neve e gelo encontrada em climas frios.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Ilha',
              subtitle: 'Um pedaço de terra cercado por água.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Torre de farol',
              subtitle:
                  'Uma torre perto da água com uma luz brilhante que ajuda a guiar as embarcações.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Avião',
              subtitle:
                  'Uma aeronave que foi transformada em uma lugar para ficar.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Rancho',
              subtitle:
                  'Uma casa em um grande terreno usado para cultivo ou criação de gado.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Edifício religioso',
              subtitle:
                  'Um espaço que servia como lugar religioso como igreja ou mesquita, transformado em acomodação.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Cabana do pastor',
              subtitle:
                  'Um pequeno vagão sobre rodas usado originalmente para guiar rebanhos de ovelhas.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Contêiner de Transporte',
              subtitle:
                  'Um contêiner de aço que já foi usado para transportar mercadorias transformado em acomodação.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Tenda',
              subtitle:
                  'Uma estrutura normalmente portátil e dobrável feita de tecido e estacas.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Microcasa',
              subtitle:
                  'Uma casa independente que geralmente tem menos de 37 metros quadrados.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Tenda tipi',
              subtitle:
                  'Uma tenda em forma de cone sustentada por estacas com uma porta basculante e teto aberto.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Torre',
              subtitle:
                  'Uma estrutura indepentente com vários andares e vista.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Trem',
              subtitle:
                  'Um vagão contêiner ou outro tipo de carro sobre trilhos transformado em acomodação.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Moinho de vento',
              subtitle:
                  'Uma estrutura com velas ou lâminas usadas para gerar energia eólica e com um espaço para moradia.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Iurta',
              subtitle:
                  'Uma tenda arredondada construída sobre uma estrutura de madeira dobrável.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Riad',
              subtitle:
                  'Uma casa tradicional com um pátio ao ar livre ou jardim no Marrocos',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Pensão coreana',
              subtitle:
                  'Uma casa com churrasqueira e espaço comum na zona rural da Coreia.',
              onpressed: () {}),
          HostTitleSubtitleButton(
              title: 'Outros', subtitle: '', onpressed: () {}),
        ]));
  }
}
