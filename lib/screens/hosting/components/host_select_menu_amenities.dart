import 'package:aloquei_app/screens/hosting/components/host_big_iconbutton.dart';
import 'package:flutter/material.dart';

class HostSelectMenuAmenities extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuAmenities({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Você tem alguma comodidade que merece destaque?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          HostBigIconButton(
            title1: 'Piscina',
            icon1: Icon(Icons.pool, color: Colors.black),
            onpressed1: () {},
            title2: 'Jacuzzi',
            icon2: Icon(Icons.hot_tub, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Pátio',
            icon1: Icon(Icons.window_sharp, color: Colors.black),
            onpressed1: () {},
            title2: 'Churrasqueira',
            icon2: Icon(Icons.outdoor_grill, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Equipamento ginástica',
            icon1: Icon(Icons.run_circle_outlined, color: Colors.black),
            onpressed1: () {},
            title2: 'Mesa de bilhar',
            icon2: Icon(Icons.tablet, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Lareira interna',
            icon1: Icon(Icons.fireplace_outlined, color: Colors.black),
            onpressed1: () {},
            title2: 'Área de jantar externa',
            icon2: Icon(Icons.chair_rounded, color: Colors.black),
            onpressed2: () {},
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'E estes favoritos dos hóspedes?',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
          HostBigIconButton(
            title1: 'Wi-Fi',
            icon1: Icon(Icons.wifi, color: Colors.black),
            onpressed1: () {},
            title2: 'TV',
            icon2: Icon(Icons.tv, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Cozinha',
            icon1: Icon(Icons.kitchen, color: Colors.black),
            onpressed1: () {},
            title2: 'Máquina de Lavar',
            icon2: Icon(Icons.wash, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Estacionamento incluído',
            icon1: Icon(Icons.car_rental, color: Colors.black),
            onpressed1: () {},
            title2: 'Ar-condicionado',
            icon2: Icon(Icons.air, color: Colors.black),
            onpressed2: () {},
          ),
          HostBigIconButton(
            title1: 'Espaço de trabalho exclusivo',
            icon1: Icon(Icons.work, color: Colors.black),
            onpressed1: () {},
            title2: 'Chuveiro externo',
            icon2: Icon(Icons.shower_rounded, color: Colors.black),
            onpressed2: () {},
          ),
          Padding(
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
          ),
        ]));
  }
}
