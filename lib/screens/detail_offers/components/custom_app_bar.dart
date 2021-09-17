import 'package:flutter/material.dart';

import 'circle_back_Button.dart';
import 'circle_favorite_Button.dart';
import 'circle_share_Button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onSharePressed;
  final VoidCallback onFavoritePressed;
  final bool favorite;

  const CustomAppBar(
      {Key key, this.onSharePressed, this.onFavoritePressed, this.favorite})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: CircleBackButton(),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleShareButton(onPressed: onSharePressed),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleFavoriteButton(
              favState: favorite, onPressed: onFavoritePressed),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
