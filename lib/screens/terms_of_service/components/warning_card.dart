import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WarningCard extends StatelessWidget {
  const WarningCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 13),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              child: Icon(
                FontAwesomeIcons.solidBell,
                color: Colors.white,
                size: 20,
              ),
              radius: 20,
            ),
          ),
          Flexible(
            child: Text(
              "We're experiencing a high contact volume right now and wait times are longer than usual.",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
