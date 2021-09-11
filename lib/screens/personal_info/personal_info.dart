import 'package:aloquei_app/blocs/profile/profile_bloc.dart';
import 'package:aloquei_app/core/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/app_bar_personal_info.dart';
import 'components/gender_personal_info.dart';
import 'components/single_input_personal_info.dart';
import 'components/title_personal_info.dart';

class PersonalInfo extends StatelessWidget {
  final User user;
  final UserModel userModel;

  PersonalInfo({
    Key key,
    @required this.user,
    this.userModel,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfileBloc(user: user, userModel: userModel)..add(ScreenStarded()),
      child: PersonalInfoPage(),
    );
  }
}

class PersonalInfoPage extends StatefulWidget {
  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  ProfileBloc profileBloc;

  @override
  void dispose() {
    profileBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    profileBloc = BlocProvider.of<ProfileBloc>(context);
    return Scaffold(
      appBar: PersonalInfoAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 25),
        children: [
          PersonalInfoTitle(),
          SingleInputPersonalInfo(
            labelText: "Nome",
            initialValue: profileBloc.userModel.nome,
          ),
          SingleInputPersonalInfo(
            labelText: "Sobrenome",
            initialValue: profileBloc.userModel.sobrenome,
          ),
          GenderInput(
            gender: profileBloc.userModel.gender,
          ),
          SingleInputPersonalInfo(
            labelText: "Email",
            initialValue: profileBloc.userModel.email,
          )
        ],
      ),
    );
  }
}
