import 'package:aloquei_app/screens/app.dart';
import 'package:aloquei_app/screens/explore/explore.dart';
import 'package:aloquei_app/screens/inbox/inbox.dart';
import 'package:aloquei_app/screens/profile/profile.dart';
import 'package:aloquei_app/screens/trips/trips.dart';
import 'package:aloquei_app/screens/wishlists/wishlists.dart';
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
        '/explore': (context) => Home(),
        '/wishlists': (context) => WishlistsPage(),
        '/trips': (context) => TripsPage(),
        '/inbox': (context) => InboxPage(),
        '/profile': (context) => ProfilePage(),
      },
      initialRoute: '/',
    );
  }
}
