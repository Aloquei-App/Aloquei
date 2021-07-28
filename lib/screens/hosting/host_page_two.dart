import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_two.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu.dart';
import 'package:aloquei_app/screens/hosting/host_page_one.dart';
import 'package:aloquei_app/screens/hosting/host_page_three.dart';
import 'package:flutter/material.dart';

class HostPageTwo extends StatelessWidget {
  const HostPageTwo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          onPressedBack: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageOne()),
            );
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageThree()),
            );
          },
        ),
        body: Column(
          children: [
            HostTopMenu(
              color1: 0xFFda1364,
              color2: 0xFF931da2,
              text1: 'Qual desses melhor',
              text2: 'descreve o seu local?',
            ),
            HostSelectMenuTwo(
              onpressed: () {},
            )
          ],
        ));
  }
}
