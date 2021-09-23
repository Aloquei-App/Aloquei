import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback action;
  final VoidCallback onBackPress;
  final Function onTextChanged;
  ExploreAppBar(
      {Key key,
      @required this.action,
      @required this.onBackPress,
      @required this.onTextChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: IconButton(
          onPressed: () => onBackPress(),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.1),
            borderRadius: BorderRadius.circular(20)),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Busque um interesse",
            labelStyle: TextStyle(fontSize: 20),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          ),
          onChanged: (value) {
            onTextChanged(value);
          },
        ),
      ),
      actions: [
        IconButton(
          onPressed: action,
          icon: Icon(
            CupertinoIcons.slider_horizontal_3,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
