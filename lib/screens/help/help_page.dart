import 'package:flutter/material.dart';

import 'components/helppage_appbar.dart';
import 'components/list_articles.dart';

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
          children: [
            ListArticles(),
            ListArticles(),
          ],
        ),
      ),
    );
  }
}
