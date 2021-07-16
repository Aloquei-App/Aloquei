
import 'package:flutter/material.dart';

import '../core/app_bars/default_app_bar.dart';
import 'components/date_input_personal_info.dart';
import 'components/title_personal_info.dart';
import 'components/single_input_personal_info.dart';
import 'components/gender_personal_info.dart';



class PersonalInfoPage extends StatefulWidget{
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          PersonalInfoTitle(),                  
          PersonalInfoNameAndLastname(labelText: "Nome",),
          PersonalInfoNameAndLastname(labelText: "Sobrenome",),
          GenderInput(gender: "Masculino",),  
          DateInput(onChanged: null, bday: "06-06-2006",)        
        ],
      ),
    );
  }
}

