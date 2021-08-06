import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_ten.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_five.dart';

import 'package:flutter/material.dart';

class HostPageTen extends StatelessWidget {
  const HostPageTen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageFive()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuGradient(
                  color1: 0xFFae1a88,
                  color2: 0xFF8b1fa6,
                  text1: 'Now for the fun part, set',
                  text2: 'your price',
                ),
                HostSelectMenuTen(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
