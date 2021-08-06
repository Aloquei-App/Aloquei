import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_seven.dart';
import 'package:aloquei_app/screens/hosting/components/hot_top_menu_image.dart';
import 'package:aloquei_app/screens/hosting/host_page_eight.dart';

import 'package:flutter/material.dart';

class HostPageSeven extends StatelessWidget {
  const HostPageSeven({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageEight()),
            );
          },
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                HostTopMenuImage(
                  image1: "assets/cellphonePhoto.jpg",
                  text1: 'Next, lets add some',
                  text2: 'photos of your place',
                ),
                HostSelectMenuSeven(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
