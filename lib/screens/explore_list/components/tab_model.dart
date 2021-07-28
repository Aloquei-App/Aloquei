import 'package:flutter/material.dart';

class TabModel extends StatelessWidget {
  final String text;
  final IconData icon;
  const TabModel({
    Key key,
    this.text,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
