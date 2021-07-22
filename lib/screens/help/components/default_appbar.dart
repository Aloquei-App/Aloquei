import 'package:flutter/material.dart';
import 'default_tab.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final VoidCallback onpressed;
  final VoidCallback onpressed2;

  DefaultAppBar({Key key, this.text, this.onpressed, this.onpressed2})
      : super(key: key);

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
            )),
        style: TextStyle(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.bold),
      ),
      elevation: 1,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color(0xFF474747),
          onPressed: onpressed2,
        ),
      ),
      bottom: TabBar(
        labelColor: Color(0xFF222222),
        unselectedLabelColor: Color(0xFF6f6f6f),
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Color(0xFF097d7e), width: 3.0),
            insets: EdgeInsets.symmetric(horizontal: 80.0)),
        tabs: <Widget>[
          DefaultTab(
            text: 'Moradias',
          ),
          DefaultTab(
            text: 'Interesses',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
