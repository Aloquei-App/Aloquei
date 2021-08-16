import 'package:flutter/material.dart';

class PresentCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const PresentCard({Key key, this.title, this.subtitle, this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 320,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Icon(
              // Icons.wallet_travel_sharp,
              icon,
              size: 70,
              color: Colors.pinkAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 27,
                fontFamily: 'Roboto',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black38,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
