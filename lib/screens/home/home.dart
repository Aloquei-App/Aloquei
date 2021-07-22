import 'package:aloquei_app/screens/core/colors.dart';
import 'package:aloquei_app/screens/explore/explore.dart';
import 'package:aloquei_app/screens/profile/profile.dart';
import 'package:aloquei_app/screens/trips/trips.dart';
import 'package:aloquei_app/screens/wishlists/wishlists.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: ('Explorar'),
            activeIcon: Icon(
              Icons.search,
              size: 30,
              color: redAirbnb,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.airbnb,
              size: 30,
            ),
            label: ('Moradias'),
            activeIcon: Icon(
              FontAwesomeIcons.airbnb,
              size: 30,
              color: redAirbnb,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.peopleCarry,
              size: 26,
            ),
            label: ('Pessoas'),
            activeIcon: Icon(
              FontAwesomeIcons.peopleCarry,
              size: 26,
              color: redAirbnb,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.userCircle,
              size: 30,
            ),
            label: ('Perfil'),
            activeIcon: Icon(
              FontAwesomeIcons.userCircle,
              size: 30,
              color: redAirbnb,
            ),
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _currentIndex = index;
            },
          );
        },
      ),
    );
  }

  final tabs = [
    ExplorePage(),
    TripsPage(),
    WishlistsPage(),
    ProfilePage(),
  ];
}
