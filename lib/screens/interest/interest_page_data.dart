import '../../core/models/cities_model.dart';
import '../../core/models/estados_model.dart';

import '../../core/models/interest_offer_model.dart';
import '../../core/models/user_model.dart';

import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/forms/input_value.dart';
import '../core/buttons/continue_button.dart';
import '../../blocs/interest/interest_bloc.dart';
import 'components/drop_down.dart';
import 'components/interest_select_menu_desc_house.dart';
import 'components/interest_select_menu_nine.dart';
import 'interest_page_gender.dart';
import 'interest_page_pet.dart';
import 'components/flow_builder_functions.dart';

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
      if ((interestModel.state ??
              interestModel.city ??
              interestModel.qtdRooms ??
              interestModel.university ??
              interestModel.desiredCourse ??
              interestModel.desiredStartAge) !=
          null)
        MaterialPage(child: InterestPageGender()),
      if (interestModel.desiredGender != null)
        MaterialPage(child: InterestPagePet()),
      if (interestModel.likesPets != null)
        MaterialPage(child: InterestSelectMenuDescHouse()),
      if (interestModel.hasHouse != null)
        MaterialPage(child: InterestSelectMenuDescription()),
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
  String city;
  String estado;
  int qtdRooms;
  String university;
  String desiredCourse;
  int desiredStartAge;
  int desiredEndAge;

  @override
  Widget build(BuildContext context) {
    final InterestBloc interestBloc = BlocProvider.of<InterestBloc>(context);
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
      body: Column(children: [
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 30),
        ),
        Expanded(
          child: ListView(
            children: [
              BlocBuilder<InterestBloc, InterestState>(
                  builder: (context, state) {
                return DropDownButton(
                    hint: estado == null ? 'Estado' : estado,
                    items: interestBloc.estados,
                    onChanged: (EstadosModel value) {
                      interestBloc.add(StateSelectedEvent(estado: value));
                      estado = value.nome;
                    });
              }),
              BlocBuilder<InterestBloc, InterestState>(
                  builder: (context, state) {
                return DropDownButton(
                    hint: city == null ? 'Cidade' : city,
                    items: interestBloc.cities,
                    onChanged: (CitiesModel value) {
                      interestBloc.add(CitySelectedEvent());
                      city = value.nome;
                    });
              }),
              InputValue(
                  text: 'Quantidade',
                  isNumber: true,
                  onChanged: (value) {
                    qtdRooms = int.parse(value);
                  }),
              InputValue(
                  text: 'Universidade',
                  onChanged: (value) {
                    university = value;
                  }),
              // InputValue(text: 'Telefone'),
              // InputValue(text: 'Link de rede social'),
              InputValue(
                  text: 'Curso',
                  onChanged: (value) {
                    desiredCourse = value;
                  }),
              InputValue(
                  text: 'Faixa etária inicial',
                  isNumber: true,
                  onChanged: (value) {
                    desiredStartAge = int.parse(value);
                  }),
              InputValue(
                  text: 'Faixa etária final',
                  isNumber: true,
                  onChanged: (value) {
                    desiredEndAge = int.parse(value);
                  }),
              SizedBox(height: 20),
              ContinueButton(onPressed: () {
                continuePressed(
                  state: estado,
                  city: city,
                  qtdRooms: qtdRooms,
                  university: university,
                  desiredCourse: desiredCourse,
                  desiredStartAge: desiredStartAge,
                  desiredEndAge: desiredEndAge,
                  context: context,
                );
              })
            ],
          ),
        )
      ]),
    );
  }
}
