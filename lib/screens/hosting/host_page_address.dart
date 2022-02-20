// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/register_home/register_home_bloc.dart';
import '../../core/models/cities_model.dart';
import '../../core/models/estados_model.dart';
import '../../core/models/house_offer_model.dart';
import '../core/bottom_bars/bottom_bar.dart';
import '../core/forms/input_value.dart';
import '../core/forms/top_menu_gradient.dart';
import '../interest/components/drop_down.dart';
import 'components/flow_builder_functions.dart';

class HostPageAddress extends StatelessWidget {
  HostPageAddress({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  HouseOfferModel houseOfferModel;
  String address;
  String city;
  String estado;
  String estadoSigla;
  String cep;
  RegisterHomeBloc registerHomeBloc;

  @override
  Widget build(BuildContext context) {
    registerHomeBloc = BlocProvider.of<RegisterHomeBloc>(context);
    return Scaffold(
      bottomNavigationBar: BottomBar(
        text: 'Avançar',
        color: Colors.grey[900],
        onPressedBack: () {
          Navigator.pop(context);
        },
        showNext: true,
        onpressedNext: () {
          continuePressed(
            adress: address,
            city: city,
            state: estadoSigla,
            zipcode: cep,
            context: context,
          );
        },
      ),
      body: Container(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TopMenuGradient(
                color1: 0xFF7b30b0,
                color2: 0xFF8621ab,
                text1: 'Confirme seu endereço',
                text2: '',
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  children: [
                    InputValue(
                        text: 'Endereço',
                        onChanged: (value) {
                          address = value;
                        }),
                    InputValue(
                        text: 'CEP',
                        isNumber: true,
                        onChanged: (value) {
                          cep = value;
                        }),
                    BlocBuilder<RegisterHomeBloc, RegisterHomeState>(
                        builder: (context, state) {
                      return DropDownButton(
                          hint: estado == null ? 'Estado' : estado,
                          items: registerHomeBloc.estados,
                          onChanged: (EstadosModel value) {
                            registerHomeBloc
                                .add(StateSelectedEvent(estado: value));
                            estado = value.nome;
                            estadoSigla = value.sigla;
                          });
                    }),
                    BlocBuilder<RegisterHomeBloc, RegisterHomeState>(
                      builder: (context, state) {
                        return DropDownButton(
                          hint: city == null ? 'Cidade' : city,
                          items: registerHomeBloc.cities,
                          onChanged: (CitiesModel value) {
                            registerHomeBloc.add(CitySelectedEvent());
                            city = value.nome;
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
