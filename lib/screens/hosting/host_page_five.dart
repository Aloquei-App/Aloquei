import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_five.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_six.dart';

import 'package:flutter/material.dart';

class HostPageFive extends StatelessWidget {
  const HostPageFive({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageSix()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuGradient(
                  color1: 0xFFd1156c,
                  color2: 0xFF8b1fa6,
                  text1: 'How many guests would',
                  text2: 'you like to welcome?',
                ),
                HostSelectMenuFive(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
