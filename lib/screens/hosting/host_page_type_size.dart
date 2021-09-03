import 'package:aloquei_app/screens/hosting/components/host_bottombar.dart';
import 'package:aloquei_app/screens/hosting/components/host_select_menu_type_size.dart';
import 'package:aloquei_app/screens/core/forms/host_top_menu_gradient.dart';
import 'package:aloquei_app/screens/hosting/host_page_address.dart';
import 'package:flutter/material.dart';

class HostPageTypeSize extends StatelessWidget {
  const HostPageTypeSize({Key key}) : super(key: key);

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
              MaterialPageRoute(builder: (context) => HostPageAddress()),
            );
          },
        ),
        body: Column(
          children: [
            TopMenuGradient(
              color1: 0xFFae1a88,
              color2: 0xFF8b1fa6,
              text1: 'Que tipo de lugar você está',
              text2: 'oferecendo aos hóspedes?',
            ),
            HostSelectMenuTypeSize(
              onpressed: () {},
            )
          ],
        ));
  }
}
