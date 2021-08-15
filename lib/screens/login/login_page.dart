import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../core/validations.dart';
import 'components/continue_button.dart';
import 'components/default_input.dart';
import 'components/default_login_button.dart';
import 'components/divider_with_text.dart';

import 'components/title_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailCntrlr = TextEditingController();
  final TextEditingController _passCntrlr = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(left: 25, right: 25, top: 40),
          children: [
            TitleLogin(),
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 25),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    DefaultInput(
                      text: "Email",
                      validator: validateEmail,
                      controller: _emailCntrlr,
                    ),
                    DefaultInput(
                      text: "Senha",
                      validator: validateSenha,
                      controller: _passCntrlr,
                    ),
                  ],
                ),
              ),
            ),
            ContinueButton(onPressed: () {
              if (validateAndSave(_formKey)) {
                authBloc.add(LoginEmailEvent(
                    email: _emailCntrlr.text, senha: _passCntrlr.text));
              }
            }),
            DividerWithText(),
            DefaultLoginButton(
                text: 'Continuar com Email',
                icon: Icons.email_outlined,
                onpressed: () {
                  authBloc.add(SignupPressedEvent());
                }),
            DefaultLoginButton(
                text: 'Continuar com Google',
                icon: FontAwesomeIcons.google,
                onpressed: () {
                  authBloc.add(LoginGoogleEvent());
                }),
          ],
        ),
      ),
    );
  }
}
