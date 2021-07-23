import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback action;

  DefaultAppBar({Key key, @required this.action}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: IconButton(
          onPressed: action,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
