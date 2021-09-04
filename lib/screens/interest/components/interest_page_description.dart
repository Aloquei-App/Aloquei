import 'package:flutter/material.dart';

import '../../core/forms/top_menu_image.dart';
import '../../hosting/components/host_bottombar.dart';
import 'interest_select_menu_nine.dart';

class InterestPageDescription extends StatelessWidget {
  const InterestPageDescription({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Avançar',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          /*onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPagePrice()),
            );
          },*/
        ),
        body: Container(
            color: Colors.white,
            child: Column(
              children: [
                TopMenuImage(
                  image1: "assets/insideHouse.jpg",
                  text1: 'Alguma',
                  text2: 'observação?',
                ),
                InterestSelectMenuDescription(
                  onpressed: () {},
                ),
              ],
            )));
  }
}
