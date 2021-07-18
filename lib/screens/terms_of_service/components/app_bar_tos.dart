import 'package:flutter/material.dart';

class TOAAppBar extends StatelessWidget implements PreferredSizeWidget {
  TOAAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      title: Text(
        "Termos de Serviço",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 25),
      ),
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
