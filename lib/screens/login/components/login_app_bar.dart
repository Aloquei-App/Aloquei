import 'package:flutter/material.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function onPressed;

  LoginAppBar({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.grey[50],
      leading: Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: IconButton(
          icon: Icon(Icons.close_rounded),
          color: Colors.black,
          onPressed: onPressed,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
