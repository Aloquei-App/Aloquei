import 'package:flutter/material.dart';

import '../core/forms/input_value.dart';
import 'components/host_continue_button.dart';
import 'host_page_guest_number.dart';

class HostPageAddress extends StatelessWidget {
  const HostPageAddress({Key key}) : super(key: key);

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
          child: Column(
            children: [
              InputValue(text: 'País/Região'),
              InputValue(text: 'Rua'),
              InputValue(text: 'Apt, suíte, etc.(Opcional)'),
              InputValue(text: 'Cidade'),
              InputValue(text: 'Estado'),
              InputValue(text: 'Código postal'),
              HostContinueButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HostPageGuestNum()),
                );
              })
            ],
          ),
        ));
  }
}
