import 'package:aloquei_app/screens/core/colors.dart';
import 'package:flutter/material.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ExploreAppBar({
    Key key,
    @required double opc,
    this.onTap,
  })  : _opc = opc,
        super(key: key);

  final double _opc;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(255, 255, 255, _opc),
      toolbarHeight: 80,
      centerTitle: true,
      leadingWidth: 0,
      elevation: 0,
      title: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey[200],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search,
                size: 25,
                color: redAirbnb,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Para onde você vai?",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
