import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_review.dart';
import 'package:aloquei_app/screens/hosting/components/host_top_menu_gradient.dart';
import 'package:flutter/material.dart';

class HostPageReview extends StatelessWidget {
  const HostPageReview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: HostBottomBar(
          text: 'Salve seu anúncio',
          color: Colors.pink,
          onPressedBack: () {
            Navigator.pop(context);
          },
          onpressedNext: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HostPageReview()),
            );
          },
        ),
        body: Column(
          children: [
            HostTopMenuGradient(
              color1: 0xFF6b26c1,
              color2: 0xFF6d29be,
              text1: 'Confira seu anúncio!',
              text2: 'Revise os dados',
            ),
            HostSelectMenuReview(
              onpressed: () {},
            )
          ],
        ));
  }
}
