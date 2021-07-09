import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var search = TextEditingController();

  int _currentIndex =0;
  final tabs = [
    Center(child: Text('Home')),
    Center(child: Text('User')),
    Center(child: Text('Trip')),
    Center(child: Text('Favorites')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
        toolbarHeight: MediaQuery.of(context).size.height*0.09,
        title: TextField(
          controller: search,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration (
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            hintText: 'Search',
            hintStyle: TextStyle(
              color:Colors.black,
            ),
          ),
        ),
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('User'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active_outlined),
            label: ('Trips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: ('Favorite'),
          ),
        ],
        onTap: (index){
          setState((){
            _currentIndex = index;
          });
        },
      ),
    );
  }
}