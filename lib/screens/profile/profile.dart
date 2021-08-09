import 'package:aloquei_app/blocs/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/default_button.dart';
import 'components/default_subtitle.dart';
import 'components/username_and_profile_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: ListView(
        children: [
          UsernameAndProfileButton(
            onTap: () {},
            urlImage: 'assets/prof.png',
            username: "Username",
          ),
          DefaultSubtitle(
            text: 'CONFIGURAÇÕES DE CONTA',
          ),
          DefaultButton(
            text: 'Informações pessoais',
            icon: FontAwesomeIcons.user,
            onpressed: () {},
          ),
          DefaultButton(
            text: 'Notificações',
            icon: FontAwesomeIcons.bell,
            onpressed: () {},
          ),
          DefaultButton(
            text: 'Viajar para o trabalho',
            icon: FontAwesomeIcons.building,
            onpressed: () {},
          ),
          DefaultSubtitle(
            text: 'HOSPEDAGEM',
          ),
          DefaultButton(
            text: 'Listar seu espaço',
            icon: FontAwesomeIcons.houseUser,
            onpressed: () {},
          ),
          DefaultButton(
            text: 'Publicando um interesse',
            icon: FontAwesomeIcons.peopleArrows,
            onpressed: () {},
          ),
          DefaultSubtitle(
            text: 'ATENDIMENTO',
          ),
          DefaultButton(
            text: 'Como funciona o Aloquei',
            icon: FontAwesomeIcons.globe,
            onpressed: () {},
          ),
          DefaultButton(
            text: 'Obtenha ajuda',
            icon: FontAwesomeIcons.question,
            onpressed: () {},
          ),
          DefaultButton(
            text: 'Envie-nos seu feedback',
            icon: FontAwesomeIcons.commentAlt,
            onpressed: () {},
          ),
          DefaultSubtitle(
            text: 'JURÍDICO',
          ),
          DefaultButton(
            text: 'Termos do Serviço',
            icon: FontAwesomeIcons.fileAlt,
            onpressed: () {},
          ),
          DefaultButton(
            text: 'Sair da conta',
            icon: null,
            onpressed: () {
              authBloc.add(LogoutEvent());
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 15),
            child: Center(
              child: Text(
                'Versão 1.0',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
