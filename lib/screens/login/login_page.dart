import 'package:aloquei_app/blocs/auth/auth_bloc.dart';
import 'package:aloquei_app/core/validations.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/continue_button.dart';
import 'components/default_login_button.dart';
import 'components/default_input.dart';
import 'components/divider_with_text.dart';
import 'components/login_app_bar.dart';
import 'components/title_login.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailCntrlr = TextEditingController();
  final TextEditingController passCntrlr = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AuthBloc authBloc;

  LoginPage({
    Key key,
    @required this.authBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoginAppBar(
        onPressed: () {},
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          TitleLogin(),
          Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 25),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  DefaultInput(
                      text: "Email",
                      controller: emailCntrlr,
                      validator: validateSenha),
                  DefaultInput(
                      text: "Senha",
                      controller: passCntrlr,
                      validator: validateSenha),
                ],
              ),
            ),
          ),
          ContinueButton(onPressed: () {
            if (validateAndSave(formKey)) {
              authBloc.add(LoginEmailEvent(
                  email: emailCntrlr.text, senha: passCntrlr.text));
            }
          }),
          DividerWithText(),
          DefaultLoginButton(
              text: 'Continuar com Email',
              icon: Icons.email_outlined,
              size: 22.0,
              onpressed: () {}),
          DefaultLoginButton(
              text: 'Continuar com Google',
              icon: FontAwesomeIcons.google,
              size: 20.0,
              onpressed: () {}),
          DefaultLoginButton(
              text: 'Continuar com Apple',
              icon: FontAwesomeIcons.apple,
              size: 24.0,
              onpressed: () {}),
        ],
      ),
    );
  }
}
