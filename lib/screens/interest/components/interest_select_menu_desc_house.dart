import 'package:flutter/material.dart';

import '../../core/forms/title_subtitle_button.dart';

class InterestSelectMenuDescHouse extends StatelessWidget {
  final VoidCallback onpressed;

  const InterestSelectMenuDescHouse({Key key, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            children: [
          TitleSubtitleButton(
              title: 'Sim',
              subtitle: 'Já tenho moradia cadastrada.',
              onpressed: () {}),
          TitleSubtitleButton(
              title: 'Não',
              subtitle: 'Não tenho moradia cadastrada.',
              onpressed: () {}),
        ]));
  }
}
