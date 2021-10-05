import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  final String img;
  final String text;

  CardImage(this.img, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(this.img,
                height: 110,
                width: MediaQuery.of(context).size.width * 0.4,
                fit: BoxFit.fitHeight),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              'Universidade',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: 'Arial'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              this.text,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: 'Arial'),
            ),
          ),
        ],
      ),
    );
  }
}
