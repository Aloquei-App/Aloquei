import 'package:flutter/material.dart';

class CircleFavoriteButton extends StatelessWidget {
  final bool favState;
  final VoidCallback onPressed;

  const CircleFavoriteButton({Key key, this.favState = false, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: Center(
          child: Ink(
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: Icon(favState ? Icons.favorite : Icons.favorite_border),
              color: Colors.black,
              onPressed: () => onPressed(),
            ),
          ),
        ));
  }
}
