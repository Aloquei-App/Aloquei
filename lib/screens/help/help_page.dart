import 'package:flutter/material.dart';

import 'components/default_button.dart';
import 'components/default_subtitle.dart';
import 'components/default_icon_button_.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Colors.grey, width: 0.2),
                ),
                hintText: "Busque por artigos",
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                )),
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.bold),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Color(0xFF474747),
              onPressed: () {},
            ),
          ),
          bottom: TabBar(
            labelColor: Color(0xFF222222),
            unselectedLabelColor: Color(0xFF6f6f6f),
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Color(0xFF097d7e), width: 3.0),
                insets: EdgeInsets.symmetric(horizontal: 80.0)),
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Moradias',
                  style: TextStyle(),
                ),
              ),
              Tab(
                  child: Text(
                'Interesses',
                style: TextStyle(),
              )),
            ],
          ),
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
