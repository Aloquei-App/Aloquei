import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_title.dart';
import 'package:aloquei_app/screens/hosting/components/hot_top_menu_image.dart';
import 'package:aloquei_app/screens/hosting/host_page_description.dart';
import 'package:flutter/material.dart';

class HostPageTitle extends StatelessWidget {
  const HostPageTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageDescription()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuImage(
                  image1: "assets/woodenHouse.jpg",
                  text1: 'Vamos dar um nome ao',
                  text2: 'seu espaço',
                ),
                HostSelectMenuTitle(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
