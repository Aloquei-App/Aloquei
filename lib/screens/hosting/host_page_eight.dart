import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_eight.dart';
import 'package:aloquei_app/screens/hosting/components/hot_top_menu_image.dart';
import 'package:aloquei_app/screens/hosting/host_page_nine.dart';
import 'package:flutter/material.dart';

class HostPageEight extends StatelessWidget {
  const HostPageEight({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageNine()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuImage(
                  image1: "assets/woodenHouse.jpg",
                  text1: 'Lets give your place a',
                  text2: 'name',
                ),
                HostSelectMenuEight(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
