import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/colors.dart';

class HomeNavigationBottomBar extends StatelessWidget {
  final int currentIndex;
  final Function onChangeTab;
  const HomeNavigationBottomBar({Key key, this.currentIndex, this.onChangeTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: greyAirbnb,
      currentIndex: currentIndex,
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
        onChangeTab(index);
      },
    );
  }
}
