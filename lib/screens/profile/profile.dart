import 'package:aloquei_app/screens/profile/components/default_subtitle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/default_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/prof.png'),
                    width: 65,
                    height: 65,
                  ),
                  SizedBox(width: 10),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Username',
                          style: TextStyle(
                              fontSize: 30,
                              color: Color(0xFF4c4c4c),
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          child: Text(
                            "Exibir Perfil",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xFF227874)),
                          ),
                          onTap: () {},
                        )
                      ])
                ],
              )),
          height: MediaQuery.of(context).size.width * 0.25,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey)),
          ),
        ),
        DefaultSubtitle(
          text: 'CONFIGURAÇÕES DE CONTA',
        ),
        DefaultButton(
          text: 'Informações pessoais',
          icon: FontAwesomeIcons.user,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Pagamentos',
          icon: FontAwesomeIcons.moneyBillWave,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Notificações',
          icon: FontAwesomeIcons.bell,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Viajar para o trabalho',
          icon: FontAwesomeIcons.building,
          size: 20,
          onpressed: () {},
        ),
        DefaultSubtitle(
          text: 'HOSPEDAGEM',
        ),
        DefaultButton(
          text: 'Listar seu espaço',
          icon: FontAwesomeIcons.home,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Aprenda sobre hospedagem',
          icon: FontAwesomeIcons.home,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Hospedando uma experiência',
          icon: FontAwesomeIcons.campground,
          size: 20,
          onpressed: () {},
        ),
        DefaultSubtitle(
          text: 'SUPORTE',
        ),
        DefaultButton(
          text: 'Como Aloquei funciona',
          icon: FontAwesomeIcons.globe,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Centro de Segurança',
          icon: FontAwesomeIcons.handsHelping,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Contatar suporte de vizinhança',
          icon: FontAwesomeIcons.bell,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Peça ajuda',
          icon: FontAwesomeIcons.question,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Nos de feedback',
          icon: FontAwesomeIcons.commentAlt,
          size: 20,
          onpressed: () {},
        ),
        DefaultSubtitle(
          text: 'LEGAL',
        ),
        DefaultButton(
          text: 'Termos do Serviço',
          icon: FontAwesomeIcons.fileAlt,
          size: 20,
          onpressed: () {},
        ),
        DefaultButton(
          text: 'Desconectar',
          icon: FontAwesomeIcons.plug,
          size: 20,
          onpressed: () {},
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, bottom: 15),
          child: Center(
              child: Text(
            'Versão Development',
            style: TextStyle(color: Colors.grey),
          )),
        )
      ]),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            Text("Placeholder BottomAppBar")
          ],
        ),
      ),
    );
  }
}
