import 'package:flutter/material.dart';

class RentalUnitCard extends StatelessWidget {
  final String imgUrl;
  final String city;
  final String host; //Rental unit host
  final String timePeriod;

  const RentalUnitCard(
    this.imgUrl,
    this.city,
    this.host,
    this.timePeriod,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {},
            leading: Image.network(
              imgUrl,
              height: 500,
            ),
            title: Text(
              (city + "\n"),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (host),
                ),
                Text(
                  ("\n" + timePeriod),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
