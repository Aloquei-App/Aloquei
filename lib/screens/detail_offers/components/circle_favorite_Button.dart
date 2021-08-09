import 'package:flutter/material.dart';

class CircleFavoriteButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Center(
          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: const Icon(Icons.favorite_border),
              color: Colors.black,
              onPressed: () {},
            ),
          ),
        ));
  }
}
