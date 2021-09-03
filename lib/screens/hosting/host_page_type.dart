import 'package:flutter/material.dart';

import '../core/forms/host_top_menu_gradient.dart';
import 'components/host_bottombar.dart';
import 'components/host_select_menu_type.dart';
import 'host_page_desc.dart';

class HostPageType extends StatelessWidget {
  const HostPageType({Key key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => HostPageDesc()),
              );
            }),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFF7b22b0,
              color2: 0xFF8621ab,
              text1: 'Em que tipo de espaço você',
              text2: 'vai hospedar?',
            ),
            HostSelectMenuOne(
              onpressed: () {},
            )
          ],
        ));
  }
}
