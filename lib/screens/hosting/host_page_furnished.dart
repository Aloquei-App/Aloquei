import '../core/bottom_bars/bottom_bar.dart';
import 'package:flutter/material.dart';
import '../core/forms/top_menu_gradient.dart';
import 'components/flow_builder_functions.dart';

import 'components/host_title_button.dart';

class HostPageFurnished extends StatelessWidget {
  const HostPageFurnished({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBar(
          text: 'Next',
          color: Colors.grey[900],
          onPressedBack: () {
            Navigator.pop(context);
          },
          showNext: false,
        ),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFFae1a90,
              color2: 0xFF8b1fa6,
              text1: 'Quanto a mobilia que está',
              text2: 'oferecendo aos hóspedes?',
            ),
            Expanded(
                child: ListView(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    children: [
                  HostTitleButton(
                    title: 'Mobiliado',
                    onpressed: () => continuePressed(
                        furnished: "Mobiliado", context: context),
                  ),
                  HostTitleButton(
                    title: 'Semi-mobiliado',
                    onpressed: () => continuePressed(
                        furnished: "Semi-mobiliado", context: context),
                  ),
                  HostTitleButton(
                    title: 'Não mobiliado',
                    onpressed: () => continuePressed(
                        furnished: "Não mobiliado", context: context),
                  ),
                ])),
          ],
        ));
  }
}
