import '../core/bottom_bars/bottom_bar.dart';
import 'package:flutter/material.dart';

import '../core/forms/top_menu_gradient.dart';
import 'components/flow_builder_functions.dart';

class HostPageReview extends StatelessWidget {
  const HostPageReview({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(
        text: 'Salve seu anúncio',
        color: Colors.pink,
        onPressedBack: () {
          Navigator.pop(context);
        },
        onpressedNext: () => sendData(context: context),
      ),
      body: Column(
        children: [
          TopMenuGradient(
            color1: 0xFF6b26c1,
            color2: 0xFF6d29be,
            text1: 'Pronto para enviar!',
            //text2: 'Revise os dados',
          ),
          /*HostSelectMenuReview(
            onpressed: () {},
          )*/
        ],
      ),
    );
  }
}
