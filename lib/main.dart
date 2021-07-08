import 'package:aloquei_app/screens/app.dart';
import 'package:aloquei_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Run());
}

class Run extends StatelessWidget {
  Run({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aloquei',
      home: MyHomePage(),
      routes: {
        '/profile': (context) => ProfilePage(),
      },
      initialRoute: '/',
    );
  }
}
