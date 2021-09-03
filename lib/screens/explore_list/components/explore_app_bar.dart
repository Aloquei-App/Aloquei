import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/colors.dart';
import 'tab_model.dart';

class ExploreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback action;
  final VoidCallback onBackPress;
  final TabController tabController;
  final Function onTextChanged;
  ExploreAppBar(
      {Key key,
      @required this.action,
      @required this.onBackPress,
      @required this.tabController,
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
        child: TextField(
          onChanged: (value) {
            onTextChanged(value);
          },
          decoration: InputDecoration(
            labelText: "Busque uma moradia",
            labelStyle: TextStyle(fontSize: 20),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
          ),
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
      bottom: TabBar(
        controller: tabController,
        isScrollable: true,
        labelColor: greyAirbnb,
        unselectedLabelColor: greyAirbnb,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: greyAirbnb, width: 3.0),
        ),
        tabs: [
          TabModel(
            text: "Repúblicas",
            icon: Icons.home_filled,
          ),
          TabModel(
            text: "Casas",
            icon: FontAwesomeIcons.home,
          ),
          TabModel(
            text: "Aptos",
            icon: FontAwesomeIcons.building,
          ),
          TabModel(
            text: "Quartos",
            icon: FontAwesomeIcons.bed,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(105);
}
