import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../core/models/user_model.dart';
import '../core/navigation.dart';
import 'components/default_button.dart';
import 'components/default_subtitle.dart';
import 'components/username_and_profile_button.dart';

class ProfilePage extends StatelessWidget {
  final UserModel user;

  const ProfilePage({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: ListView(
        children: [
          UsernameAndProfileButton(
            onTap: () => navigateToPersonalData(context),
            urlImage: 'assets/prof.png',
            username: user.nome,
          ),
          DefaultSubtitle(
            text: 'CONFIGURAÇÕES DE CONTA',
          ),
          DefaultButton(
            text: 'Informações pessoais',
            icon: FontAwesomeIcons.user,
            onpressed: () {
              navigateToPersonalData(context);
            },
          ),
          DefaultSubtitle(
            text: 'HOSPEDAGEM',
          ),
          DefaultButton(
            text: 'Listar seu espaço',
            icon: FontAwesomeIcons.houseUser,
            onpressed: () {
              navigateToHostPage(context);
            },
          ),
          DefaultButton(
            text: 'Publicando um interesse',
            icon: FontAwesomeIcons.peopleArrows,
            onpressed: () {
              navigateToInterestPage(context);
            },
          ),
          DefaultButton(
            text: 'Obtenha ajuda',
            icon: FontAwesomeIcons.question,
            onpressed: () {
              navigateToHelpPage(context);
            },
          ),
          DefaultSubtitle(
            text: 'JURÍDICO',
          ),
          DefaultButton(
            text: 'Termos do Serviço',
            icon: FontAwesomeIcons.fileAlt,
            onpressed: () {
              navigateToTerms(context);
            },
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
