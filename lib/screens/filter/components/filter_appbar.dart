import 'package:flutter/material.dart';

class FilterAppBar extends StatelessWidget {
  final VoidCallback onpressed;

  const FilterAppBar({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          leading: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(Icons.close_rounded),
              color: Colors.black,
              onPressed: onpressed,
            ),
          ),
        ));
  }
}
