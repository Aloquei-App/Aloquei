import 'package:flutter/material.dart';
import 'components/helppage_subtitle.dart';
import 'components/helppage_icon_button_.dart';
import 'components/helppage_appbar.dart';
import 'components/helppage_button.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: HelpPageAppBar(
          text: 'Busque por artigos',
          onpressed: () {},
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Center(
                  child: ListView(children: [
                HelpPageSubtitle(text: 'Artigos Recomendados'),
                HelpPageButton(text: 'Artigo 1', ontap: () {}),
                HelpPageButton(text: 'Artigo 2', ontap: () {}),
                HelpPageButton(text: 'Artigo 3', ontap: () {}),
                HelpPageButton(text: 'Artigo 4', ontap: () {}),
                HelpPageSubtitle(text: 'Navegar todos tópicos'),
                HelpPageIconButton(
                  text: 'Tópico 1',
                  icon: Icons.cabin,
                  onpressed: () {},
                ),
                HelpPageIconButton(
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
                HelpPageSubtitle(text: 'Artigos Recomendados'),
                HelpPageButton(text: 'Artigo 1', ontap: () {}),
                HelpPageButton(text: 'Artigo 2', ontap: () {}),
                HelpPageButton(text: 'Artigo 3', ontap: () {}),
                HelpPageButton(text: 'Artigo 4', ontap: () {}),
                HelpPageSubtitle(text: 'Navegar todos tópicos'),
                HelpPageIconButton(
                  text: 'Tópico 1',
                  icon: Icons.cabin,
                  onpressed: () {},
                ),
                HelpPageIconButton(
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
