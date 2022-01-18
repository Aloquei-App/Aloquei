import '../../core/models/house_offer_model.dart';
import 'package:flutter/material.dart';

import '../core/forms/input_value.dart';
import 'components/flow_builder_functions.dart';
import '../core/buttons/continue_button.dart';
import 'components/host_counter.dart';

class HostPageAddress extends StatelessWidget {
  HostPageAddress({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  HouseOfferModel houseOfferModel;
  String address;
  String city;
  String state;
  int qtdRooms;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Confirme seu endereço',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
          leading: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back, size: 30),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(top: 30),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                InputValue(
                    text: 'Rua',
                    onChanged: (value) {
                      address = value;
                    }),
                InputValue(
                    text: 'Cidade',
                    onChanged: (value) {
                      city = value;
                    }),
                InputValue(
                    text: 'Estado',
                    onChanged: (value) {
                      state = value;
                    }),
                Padding(
                  padding: EdgeInsets.all(35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Quartos',
                        style: TextStyle(fontSize: 22),
                      ),
                      CounterView(
                        counterCallback: (value) {
                          qtdRooms = value;
                        },
                      )
                    ],
                  ),
                ),
                ContinueButton(onPressed: () {
                  continuePressed(
                    adress: address,
                    city: city,
                    state: state,
                    qtdRooms: qtdRooms,
                    context: context,
                  );
                }),
              ],
            ),
          ),
        ));
  }
}
