import 'package:flutter/material.dart';

import '../../core/colors.dart';

class HelpPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final VoidCallback onpressed;

  HelpPageAppBar({Key key, this.text, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey, width: 0.2),
          ),
          hintText: "Busque por artigos",
          prefixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: onpressed,
          ),
        ),
        style: TextStyle(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),
      ),
      elevation: 1,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          color: greyAirbnb,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottom: TabBar(
        labelColor: Colors.black,
        unselectedLabelColor: lightgreyAirbnb,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: lightblueAirbnb, width: 3.0),
          insets: EdgeInsets.symmetric(horizontal: 80.0),
        ),
        tabs: [
          Tab(
            child: Text(
              'Moradias',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Tab(
            child: Text(
              'Interesses',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
