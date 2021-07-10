import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/app.dart';
import 'screens/explore/explore.dart';
import 'screens/inbox/inbox.dart';
import 'screens/profile/profile.dart';
import 'screens/trips/trips.dart';
import 'screens/wishlists/wishlists.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
        '/explore': (context) => ExplorePage(),
        '/wishlists': (context) => WishlistsPage(),
        '/trips': (context) => TripsPage(),
        '/inbox': (context) => InboxPage(),
        '/profile': (context) => ProfilePage(),
      },
      initialRoute: '/',
    );
  }
}
