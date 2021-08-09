import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../core/validations.dart';
import 'components/continue_button.dart';
import 'components/default_input.dart';
import 'components/default_login_button.dart';
import 'components/divider_with_text.dart';
import 'components/login_app_bar.dart';
import 'components/title_login.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailCntrlr = TextEditingController();
  final TextEditingController _passCntrlr = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      appBar: LoginAppBar(
        onPressed: () {},
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
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
                      controller: _emailCntrlr,
                      validator: validateSenha),
                  DefaultInput(
                      text: "Senha",
                      controller: _passCntrlr,
                      validator: validateSenha),
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
              size: 22.0,
              onpressed: () {
                authBloc.add(SignupPressedEvent());
              }),
          DefaultLoginButton(
              text: 'Continuar com Google',
              icon: FontAwesomeIcons.google,
              size: 20.0,
              onpressed: () {
                authBloc.add(LoginGoogleEvent());
              }),
        ],
      ),
    );
  }
}
