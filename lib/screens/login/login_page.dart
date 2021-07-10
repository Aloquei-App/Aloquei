import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

//Button Contructor, quando tiver onPressed, remover ou adicionar oque os comentarios dizem onde necessário dentro da função
class DefaultButton extends StatelessWidget {
  final String text;
  final Icon icon;
  //final Function function; //Adicionar isso
  const DefaultButton(this.text, this.icon); //Remover isso
  //const DefaultButton(this.text, this.icon, this.function); //Adicionar isso

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
            left: 25.0, right: 25.0, top: 3.0, bottom: 12),
        child: ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              icon,
              SizedBox(width: 62),
              Text(
                text,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              )
            ],
          ),
          style: ElevatedButton.styleFrom(
              side: BorderSide(width: 0.7, color: Colors.black),
              minimumSize: Size(400.0, 47.0),
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0))),
          onPressed: () {}, //Remover isso
          //onPressed: function // Adicionar isso
        ));
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                //Exit Button
                Container(
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.width * 0.15,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: IconButton(
                    splashRadius: 20,
                    icon: const Icon(Icons.close_rounded),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ),
                //Title
                Container(
                  alignment: Alignment.centerLeft,
                  height: MediaQuery.of(context).size.width * 0.09,
                  width: MediaQuery.of(context).size.width * 0.88,
                  child: const Text(
                    'Entre ou cadastre-se no Aloquei',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Arial'),
                  ),
                ),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 25.0, top: 10.0, bottom: 25),
                      child: Column(children: [
                        SizedBox(height: 10),
                        //Email Input
                        TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Escreva seu email';
                              } else if (value.contains("@") &&
                                  value.length >= 3) {
                                return null;
                              } else {
                                return 'Email inválido';
                              }
                            }),
                        //Password Input
                        TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Senha'),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Escreva sua senha';
                              } else if (value.length < 4) {
                                return 'Senha inválida';
                              } else {
                                return null;
                              }
                            })
                      ]),
                    )),
                //Continue Button
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: MaterialButton(
                      child: Text(
                        'Continuar',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                      color: Color(0xFFe61d53),
                      height: MediaQuery.of(context).size.width * 0.12,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Dados aceitos')));
                          return;
                        }
                      }),
                ),
                //Line divider with text in the middle
                Row(children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  Text("ou",
                      style: TextStyle(fontSize: 15, color: Color(0xFF999999))),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                //Continue with Email Button
                DefaultButton(
                    'Continuar com Email',
                    Icon(Icons.email_outlined,
                        color: Colors.black, size: 22.0)),
                //Continue with Google Button
                DefaultButton(
                    'Continuar com Google',
                    Icon(FontAwesomeIcons.google,
                        color: Colors.black, size: 20.0)),
                //Continue with Apple Button
                DefaultButton(
                    'Continuar com Apple',
                    Icon(FontAwesomeIcons.apple,
                        color: Colors.black, size: 24.0))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
