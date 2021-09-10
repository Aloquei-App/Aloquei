import 'package:flutter/material.dart';
import 'host_title_button.dart';

class HostSelectMenuTypeSize extends StatelessWidget {
  final VoidCallback onpressed;

  const HostSelectMenuTypeSize({Key key, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          HostTitleButton(title: 'Um lugar inteiro', onpressed: () {}),
          HostTitleButton(title: 'Um quarto inteiro', onpressed: () {}),
          HostTitleButton(title: 'Um quarto compartilhado', onpressed: () {}),
        ]));
  }
}
