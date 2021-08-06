import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_eight.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_nine.dart';
import 'package:aloquei_app/screens/hosting/components/hot_top_menu_image.dart';
import 'package:aloquei_app/screens/hosting/host_page_ten.dart';

import 'package:flutter/material.dart';

class HostPageNine extends StatelessWidget {
  const HostPageNine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Next',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageTen()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuImage(
                  image1: "assets/insideHouse.jpg",
                  text1: 'Now, lets describe your',
                  text2: 'place',
                ),
                HostSelectMenuNine(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
