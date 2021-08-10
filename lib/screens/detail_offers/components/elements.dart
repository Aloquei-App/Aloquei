import 'package:flutter/material.dart';

class Elements extends StatelessWidget {
  final IconData icon;
  final String title;
  final String text;

  Elements(this.icon, this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 10.0, top: 10.0),
        child: Container(
          child: Row(
            children: [
              Icon(
                this.icon,
                size: 40.0,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.title,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Arial'),
                    ),
                    Text(
                      this.text,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          fontFamily: 'Arial'),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
