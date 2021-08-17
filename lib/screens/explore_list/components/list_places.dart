import 'package:flutter/material.dart';

import 'place_item.dart';

class ListPlaces extends StatelessWidget {
  final ScrollController scrollController;
  const ListPlaces({
    Key key,
    this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 25, left: 25),
      child: ListView.builder(
        controller: scrollController,
        itemCount: 3,
        itemBuilder: (context, index) {
          return PlaceItem(
            name: "República XY",
            cost: 9.613,
            dist: 5.561,
            imgs: [
              Image.asset(
                'assets/images/a.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/b.jpg',
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/c.jpg',
                fit: BoxFit.cover,
              ),
            ],
          );
        },
      ),
    );
  }
}
