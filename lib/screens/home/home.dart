import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/colors.dart';
import '../explore/explore.dart';
import '../profile/profile.dart';
import '../trips/trips.dart';
import '../wishlists/wishlists.dart';

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
        selectedItemColor: greyAirbnb,
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
              FontAwesomeIcons.heart,
              size: 26,
            ),
            label: ('Favoritos'),
            activeIcon: Icon(
              FontAwesomeIcons.heart,
              size: 26,
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
    WishlistsPage(),
    TripsPage(),
    WishlistsPage(),
    ProfilePage(),
  ];
}
