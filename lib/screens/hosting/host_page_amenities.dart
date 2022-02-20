// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../core/bottom_bars/bottom_bar.dart';
import '../core/forms/top_menu_gradient.dart';
import 'components/flow_builder_functions.dart';
import 'components/host_big_iconbutton.dart';

class HostPageAmenities extends StatelessWidget {
  int courtyard;
  int kitchen;
  int restroom;
  int parking;
  int rooms;
  int livinRoom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          showNext: true,
          onpressedNext: () {
            continuePressed(
                courtyard: courtyard,
                kitchen: kitchen,
                restroom: restroom,
                garage: parking,
                qtdRooms: rooms,
                livinRoom: livinRoom,
                context: context);
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                TopMenuGradient(
                  color1: 0xFFd61566,
                  color2: 0xFF8b1fa6,
                  text1: 'Informe aos hóspedes o',
                  text2: 'que seu espaço tem para oferecer',
                ),
                Expanded(
                    child: ListView(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                        children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          'Você tem alguma comodidade que merece destaque?',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                      ),
                      HostBigIconButton(
                        title1: 'Pátio',
                        icon1: Icon(Icons.window_sharp, color: Colors.black),
                        onpressed1: (value) => {courtyard = value},
                        title2: 'Cozinha',
                        icon2: Icon(Icons.tablet, color: Colors.black),
                        onpressed2: (value) => {kitchen = value},
                      ),
                      HostBigIconButton(
                        title1: 'Garagem',
                        icon1: Icon(Icons.run_circle_outlined,
                            color: Colors.black),
                        onpressed1: (value) => {parking = value},
                        title2: 'Banheiro',
                        icon2: Icon(Icons.chair_rounded, color: Colors.black),
                        onpressed2: (value) {
                          restroom = value;
                        },
                      ),
                      HostBigIconButton(
                        title1: 'Sala de Estar',
                        icon1:
                            Icon(Icons.fireplace_outlined, color: Colors.black),
                        onpressed1: (value) => {livinRoom = value},
                        title2: 'Quartos',
                        icon2: Icon(Icons.bed, color: Colors.black),
                        onpressed2: (value) {
                          rooms = value;
                        },
                      ),
                      // HostBigIconButton(
                      //   title1: 'Wi-Fi',
                      //   icon1: Icon(Icons.wifi, color: Colors.black),
                      //   onpressed1: () {},
                      //   title2: 'TV',
                      //   icon2: Icon(Icons.tv, color: Colors.black),
                      //   onpressed2: () {},
                      // ),
                      // HostBigIconButton(
                      //   title1: 'Cozinha',
                      //   icon1: Icon(Icons.kitchen, color: Colors.black),
                      //   onpressed1: () {},
                      //   title2: 'Máquina de Lavar',
                      //   icon2: Icon(Icons.wash, color: Colors.black),
                      //   onpressed2: () {},
                      // ),
                      // HostBigIconButton(
                      //   title1: 'Estacionamento incluído',
                      //   icon1: Icon(Icons.car_rental, color: Colors.black),
                      //   onpressed1: () {},
                      //   title2: 'Ar-condicionado',
                      //   icon2: Icon(Icons.air, color: Colors.black),
                      //   onpressed2: () {},
                      // ),
                      // HostBigIconButton(
                      //   title1: 'Espaço de trabalho exclusivo',
                      //   icon1: Icon(Icons.work, color: Colors.black),
                      //   onpressed1: () {},
                      //   title2: 'Chuveiro externo',
                      //   icon2: Icon(Icons.shower_rounded, color: Colors.black),
                      //   onpressed2: () {},
                      // ),
                      /*Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Tem algum destes itens de segurança?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          HostBigIconButton(
            title1: 'Detector de fumaça',
            icon1: Icon(Icons.album_outlined, color: Colors.black),
            onpressed1: () {},
            title2: 'Kit de primeiros socorros',
            icon2: Icon(Icons.medical_services, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Extintor de incêndio',
            icon1: Icon(Icons.fire_extinguisher_outlined, color: Colors.black),
            onpressed1: () {},
            title2: 'Tranca na porta do quarto',
            icon2: Icon(Icons.lock, color: Colors.black),
            onpressed2: () {},
          ),*/
                    ]))
              ],
            )));
  }
}
