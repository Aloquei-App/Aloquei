import 'package:aloquei_app/screens/signup/signup.dart';
import 'package:aloquei_app/screens/personal_info/personal_info.dart';
import 'package:flutter/material.dart';
import 'package:aloquei_app/screens/explore/explore.dart';
import 'package:aloquei_app/screens/inbox/inbox.dart';
import 'package:aloquei_app/screens/profile/profile.dart';
import 'package:aloquei_app/screens/trips/trips.dart';
import 'package:aloquei_app/screens/wishlists/wishlists.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Run extends StatelessWidget {
  Run({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      title: 'Aloquei',
      home: PersonalInfoPage(),
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
