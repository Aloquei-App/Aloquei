import 'package:aloquei_app/core/models/interest_offer_model.dart';
import 'package:aloquei_app/core/models/user_model.dart';
import 'package:aloquei_app/screens/core/navigation.dart';
import 'package:aloquei_app/screens/explore/explore.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/forms/input_value.dart';
import '../../hosting/components/host_continue_button.dart';
import '../../../blocs/interest/interest_bloc.dart';
import '../interest_page_gender.dart';
import '../interest_page_pet.dart';
import 'flow_builder_functions.dart';

class InterestPageAddress extends StatelessWidget {
  final UserModel userModel;

  const InterestPageAddress({Key key, @required this.userModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InterestBloc(userModel)..add(ScreenStarted()),
      child: FlowPagesInterest(),
    );
  }
}

class FlowPagesInterest extends StatefulWidget {
  const FlowPagesInterest({Key key}) : super(key: key);

  @override
  _FlowPagesInterestState createState() => _FlowPagesInterestState();
}

class _FlowPagesInterestState extends State<FlowPagesInterest> {
  InterestBloc interestBloc;
  @override
  void initState() {
    interestBloc = BlocProvider.of<InterestBloc>(context);
    super.initState();
  }

  @override
  void dispose() {
    interestBloc.close();
    super.dispose();
  }

  List<Page> onGeneratePages(InterestModel interestModel, List<Page> page) {
    return [
      MaterialPage(child: InterestForm()),
      if ((interestModel.city ??
              interestModel.qtdRooms ??
              interestModel.university ??
              interestModel.desiredCourse ??
              interestModel.desiredStartAge) !=
          null)
        MaterialPage(child: InterestPageGender()),
      if (interestModel.desiredGender != null)
        MaterialPage(child: InterestPagePet()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return FlowBuilder(
        onComplete: (InterestModel model) {
          interestBloc.add(SubmitEvent(model));
        },
        state: InterestModel(),
        onGeneratePages: onGeneratePages);
  }
}

class InterestForm extends StatelessWidget {
  InterestForm({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  InterestModel interestModel;
  String city;
  int qtdRooms;
  String university;
  String desiredCourse;
  int desiredStartAge;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Cadastro de interesse',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 30),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop(context);
            },
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 30),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              InputValue(
                  text: 'Cidade',
                  onChanged: (value) {
                    city = value;
                  }),
              InputValue(
                  text: 'Quantidade',
                  onChanged: (value) {
                    qtdRooms = int.parse(value);
                  }),
              InputValue(
                  text: 'Universidade',
                  onChanged: (value) {
                    university = value;
                  }),
              // InputValue(text: 'Telefone'),
              //InputValue(text: 'Email'),
              // InputValue(text: 'Link de rede social'),
              InputValue(
                  text: 'Curso',
                  onChanged: (value) {
                    desiredCourse = value;
                  }),
              InputValue(
                  text: 'Faixa etária inicial',
                  onChanged: (value) {
                    desiredStartAge = int.parse(value);
                  }),
              SizedBox(height: 20),
              HostContinueButton(onPressed: () {
                continuePressed(
                  city: city,
                  qtdRooms: qtdRooms,
                  university: university,
                  desiredCourse: desiredCourse,
                  desiredStartAge: desiredStartAge,
                  context: context,
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
