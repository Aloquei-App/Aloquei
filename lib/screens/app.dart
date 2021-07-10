import 'package:flutter/material.dart';

import 'explore/explore.dart';
import 'inbox/inbox.dart';
import 'profile/profile.dart';
import 'trips/trips.dart';
import 'wishlists/wishlists.dart';

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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aloquei App"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
