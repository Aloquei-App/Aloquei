import 'package:aloquei_app/screens/hosting/components/host_title_button.dart';
import 'package:flutter/material.dart';
import 'host_title_button.dart';

class HostSelectMenuThree extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuThree({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          HostTitleButton(title: 'An entire place', onpressed: () {}),
          HostTitleButton(title: 'Title', onpressed: () {}),
          HostTitleButton(title: 'Title', onpressed: () {}),
        ]));
  }
}
