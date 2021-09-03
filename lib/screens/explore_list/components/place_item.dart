import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class PlaceItem extends StatelessWidget {
  final String name;
  final double cost;
  final double dist;
  final List<Widget> imgs;
  const PlaceItem({
    Key key,
    this.imgs,
    this.name,
    this.cost,
    this.dist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: ImageSlideshow(
            height: 400,
            width: double.infinity,
            initialPage: 0,
            indicatorColor: Colors.grey,
            indicatorBackgroundColor: Colors.grey[300],
            children: imgs,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0, top: 8, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(text: 'R\$$cost'),
                    TextSpan(
                        text: ' / mês',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 5.0, top: 3, bottom: 20),
          child: Text(
            "$dist km de distância",
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.normal,
                fontSize: 20),
          ),
        )
      ],
    );
  }
}
