import 'package:flutter/material.dart';

import 'circle_back_Button.dart';
import 'circle_favorite_Button.dart';
import 'circle_share_Button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
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
          child: CircleShareButton(),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: CircleFavoriteButton(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
