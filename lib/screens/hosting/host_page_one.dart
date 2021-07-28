import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_one.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu.dart';
import 'package:aloquei_app/screens/hosting/host_page_two.dart';
import 'package:flutter/material.dart';

class HostPageOne extends StatelessWidget {
  const HostPageOne({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(onPressedBack: () {
          Navigator.pop(context);
        }, onpressedNext: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HostPageTwo()),
          );
        }),
        body: Column(
          children: [
            HostTopMenu(
              color1: 0xFF7b22b0,
              color2: 0xFF8621ab,
              text1: 'Que tipo de local você',
              text2: 'vai hospedar?',
            ),
            HostSelectMenuOne(
              onpressed: () {},
            )
          ],
        ));
  }
}
