import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_six.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_seven.dart';

import 'package:flutter/material.dart';

class HostPageSix extends StatelessWidget {
  const HostPageSix({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageSeven()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuGradient(
                  color1: 0xFFd61566,
                  color2: 0xFF8b1fa6,
                  text1: 'Let guest know what your',
                  text2: 'place has to offer',
                ),
                HostSelectMenuSix(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
