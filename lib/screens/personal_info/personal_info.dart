import 'package:flutter/material.dart';

import '../core/app_bars/default_app_bar.dart';
import 'components/personal_info_title.dart';
import 'components/personal_info_name_and_lastname.dart';



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
          PersonalInfoNameAndLastname(),          
        ],
      ),
    );
  }
}

