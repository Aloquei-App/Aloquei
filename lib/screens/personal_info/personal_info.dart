import 'package:flutter/material.dart';

import 'components/app_bar_personal_info.dart';
import 'components/gender_personal_info.dart';
import 'components/single_input_personal_info.dart';
import 'components/title_personal_info.dart';

class PersonalInfoPage extends StatefulWidget {
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PersonalInfoAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          PersonalInfoTitle(),
          SingleInputPersonalInfo(
            labelText: "Nome",
          ),
          SingleInputPersonalInfo(
            labelText: "Sobrenome",
          ),
          GenderInput(
            gender: "Masculino",
          ),
          SingleInputPersonalInfo(
            labelText: "Email",
            initialValue: "example@email.com",
          )
        ],
      ),
    );
  }
}
