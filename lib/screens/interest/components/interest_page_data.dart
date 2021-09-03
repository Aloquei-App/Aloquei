import '../../core/forms/input_value.dart';
import 'package:flutter/material.dart';

import '../../hosting/components/host_continue_button.dart';
import '../interest_page_gender.dart';

class InterestPageAddress extends StatelessWidget {
  const InterestPageAddress({Key key}) : super(key: key);

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
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            InputValue(text: 'Cidade'),
            InputValue(text: 'Quantidade'),
            InputValue(text: 'Universidade'),
            InputValue(text: 'Telefone'),
            InputValue(text: 'Email'),
            InputValue(text: 'Link de rede social'),
            InputValue(text: 'Curso'),
            InputValue(text: 'Faixa etária'),
            SizedBox(height: 20),
            HostContinueButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InterestPageGender()),
              );
            })
          ],
        ),
      ),
    );
  }
}
