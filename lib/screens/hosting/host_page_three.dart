import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_three.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_four.dart';
import 'package:flutter/material.dart';

class HostPageThree extends StatelessWidget {
  const HostPageThree({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageFour()),
            );
          },
        ),
        body: Column(
          children: [
            HostTopMenuGradient(
              color1: 0xFFae1a88,
              color2: 0xFF8b1fa6,
              text1: 'Que tipo de espaço os',
              text2: 'hóspedes teriam?',
            ),
            HostSelectMenuThree(
              onpressed: () {},
            )
          ],
        ));
  }
}
