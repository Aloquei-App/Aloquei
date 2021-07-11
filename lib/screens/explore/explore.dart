import 'package:aloquei_app/screens/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExplorePage extends StatefulWidget {
  ExplorePage({Key key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  var search = TextEditingController();
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
              Icons.search,
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
    Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        elevation: 0,
        title: InkWell(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 25,
                  color: redAirbnb,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Para onde você vai?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
        ),
      ),
    ),
    Center(child: Text('User')),
    Center(child: Text('Trip')),
    Center(child: Text('Favorites')),
  ];
}
