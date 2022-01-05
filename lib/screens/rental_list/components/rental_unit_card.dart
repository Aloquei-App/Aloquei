import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class ModelItemCard extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();
  final String imgUrl;
  final String city;
  final String host; //Rental unit host
  final String timePeriod;
  final bool flag;
  final Function onClick;

  ModelItemCard(
    this.imgUrl,
    this.city,
    this.host,
    this.timePeriod,
    this.flag,
    this.onClick,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: onClick,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              flag
                  ? Container(
                      height: 90,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(imgUrl),
                        ),
                      ),
                    )
                  : CircleAvatar(
                      backgroundColor: _randomColor.randomColor(
                        colorBrightness: ColorBrightness.light,
                      ),
                      foregroundColor: Colors.black,
                      //backgroundImage: AssetImage(img),
                      radius: 40,
                      child: Text(host[0].toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    city,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        letterSpacing: 1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      host,
                      style: TextStyle(
                        height: 1.2,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      timePeriod,
                      style: TextStyle(
                        height: 1.2,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
