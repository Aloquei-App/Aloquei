import 'package:flutter/material.dart';

import 'components/default_button.dart';
import 'components/default_subtitle.dart';
import 'components/default_icon_button_.dart';
import 'components/default_appbar.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: DefaultAppBar(
          text: 'Busque por artigos',
          onpressed: () {},
          onpressed2: () {},
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Center(
                  child: ListView(children: [
                DefaultHelpSubtitle(text: 'Artigos Recomendados'),
                DefaultHelpButton(text: 'Artigo 1', onpressed: () {}),
                DefaultHelpButton(text: 'Artigo 2', onpressed: () {}),
                DefaultHelpButton(text: 'Artigo 3', onpressed: () {}),
                DefaultHelpButton(text: 'Artigo 4', onpressed: () {}),
                DefaultHelpSubtitle(text: 'Navegar todos tópicos'),
                DefaultIconHelpButton(
                  text: 'Tópico 1',
                  icon: Icons.cabin,
                  onpressed: () {},
                ),
                DefaultIconHelpButton(
                  text: 'Tópico 2',
                  icon: Icons.branding_watermark,
                  onpressed: () {},
                ),
              ])),
            ),
            Container(
              color: Colors.white,
              child: Center(
                  child: ListView(children: [
                DefaultHelpSubtitle(text: 'Artigos Recomendados'),
                DefaultHelpButton(text: 'Artigo 1', onpressed: () {}),
                DefaultHelpButton(text: 'Artigo 2', onpressed: () {}),
                DefaultHelpButton(text: 'Artigo 3', onpressed: () {}),
                DefaultHelpButton(text: 'Artigo 4', onpressed: () {}),
                DefaultHelpSubtitle(text: 'Navegar todos tópicos'),
                DefaultIconHelpButton(
                  text: 'Tópico 1',
                  icon: Icons.cabin,
                  onpressed: () {},
                ),
                DefaultIconHelpButton(
                  text: 'Tópico 2',
                  icon: Icons.branding_watermark,
                  onpressed: () {},
                ),
              ])),
            ),
          ],
        ),
      ),
    );
  }
}
