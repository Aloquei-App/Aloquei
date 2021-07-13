import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/continue_button.dart';
import 'components/default_login_button.dart';
import 'components/default_input.dart';
import 'components/divider_with_text.dart';
import 'components/login_app_bar.dart';
import 'components/title_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            child: Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 25),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  DefaultInput(text: "Email"),
                  DefaultInput(text: "Senha"),
                ],
              ),
            ),
          ),
          ContinueButton(
            onPressed: () {},
          ),
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
