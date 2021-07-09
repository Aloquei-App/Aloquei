import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  static final String routeName = '/loginPageRoute';

  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
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
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.width * 0.20,
                    width: MediaQuery.of(context).size.width * 0.98,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: IconButton(
                        icon: const Icon(Icons.close_rounded),
                        color: Colors.black,
                        onPressed: () {},
                      ),
                    )),
                Container(
                    height: MediaQuery.of(context).size.width * 0.10,
                    width: MediaQuery.of(context).size.width * 0.90,
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                        'Entre ou cadastre-se no Aloquei',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'Arial'),
                      ),
                    )),
                Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(children: <Widget>[
                        SizedBox(height: 10),
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
                      color: Colors.pink,
                      height: MediaQuery.of(context).size.width * 0.12,
                      minWidth: double.infinity,
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(7)),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Dados aceitos')));
                          return;
                        }
                      }),
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  Text("ou",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700])),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 3.0, bottom: 12),
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.email_outlined,
                              color: Colors.black, size: 22.0),
                          SizedBox(width: 62),
                          Text(
                            'Continuar com Email',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.7, color: Colors.black),
                          minimumSize: Size(400.0, 47.0),
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(7.0))),
                      onPressed: () {},
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 3.0, bottom: 12),
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.google,
                              color: Colors.black, size: 20.0),
                          SizedBox(width: 60),
                          Text(
                            'Continuar com Google',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.7, color: Colors.black),
                          minimumSize: Size(400.0, 47.0),
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(7.0))),
                      onPressed: () {},
                    )),
                Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, right: 25.0, top: 3.0, bottom: 12),
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(FontAwesomeIcons.apple,
                              color: Colors.black, size: 24.0),
                          SizedBox(width: 64),
                          Text(
                            'Continuar com Apple',
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.black),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          side: BorderSide(width: 0.7, color: Colors.black),
                          minimumSize: Size(400.0, 47.0),
                          primary: Colors.white,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(7.0))),
                      onPressed: () {},
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
