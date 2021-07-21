import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselOffers extends StatelessWidget {
  final List<String> imageList;
  CarouselOffers(this.imageList);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1,
        enableInfiniteScroll: true,
        height: MediaQuery.of(context).size.height / 3.2,
      ),
      items: imageList
          .map((e) => ClipRRect(
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      e,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
