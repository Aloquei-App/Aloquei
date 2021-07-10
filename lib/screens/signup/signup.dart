import 'package:flutter/material.dart';

import '../core/app_bars/default_app_bar.dart';
import 'components/date_input.dart';
import 'components/email_input.dart';
import 'components/name_and_last_name_input.dart';
import 'components/password_input.dart';
import 'components/signup_title.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          SignupTitle(),
          NameAndLastNameInput(
            lastNameController: null,
            nameController: null,
          ),
          DateInput(
            onChanged: null,
          ),
          EmailInput(
            controller: null,
          ),
          PasswordInput(
            controller: null,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'Verificar o texto e por os links no meio do texto.',
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: TextButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                    EdgeInsets.all(20),
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {},
                child: Text(
                  'Concordar e continuar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
