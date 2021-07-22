import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

import 'core/models/user_model.dart';
import 'screens/app.dart';
import 'screens/explore/explore.dart';
import 'screens/inbox/inbox.dart';
import 'screens/profile/profile.dart';
import 'screens/search/search.dart';
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
  User _user;
  UserModel _userModel;
  setUser(User value, UserModel model) {
    _user = value;
    _userModel = model;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [const Locale('pt', 'BR')],
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget),
        maxWidth: 1200,
        minWidth: 450,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.resize(425, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.autoScale(1000, name: TABLET),
          ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ResponsiveBreakpoint.autoScale(2460, name: "4K"),
        ],
        background: Container(color: Color(0xFFF5F5F5)),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Aloquei',
      theme: ThemeData(
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: //SignupPage(),
          App(setUser: setUser),
      routes: {
        '/explore': (context) => ExplorePage(),
        '/wishlists': (context) => WishlistsPage(),
        '/trips': (context) => TripsPage(),
        '/inbox': (context) => InboxPage(),
        '/profile': (context) => ProfilePage(),
        '/search': (context) => Search(),
      },
      initialRoute: '/',
    );
  }
}
