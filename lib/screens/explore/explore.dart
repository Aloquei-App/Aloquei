import 'package:flutter/material.dart';

import '../core/colors.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: 80,
        centerTitle: true,
        leadingWidth: 0,
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
    );
  }
}
