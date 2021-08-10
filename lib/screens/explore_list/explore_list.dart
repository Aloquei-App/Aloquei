import 'package:flutter/material.dart';

import 'components/explore_app_bar.dart';
import 'components/list_places.dart';

class ExploreList extends StatelessWidget {
  final VoidCallback onBackPress;
  const ExploreList({Key key, @required this.onBackPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: ExploreAppBar(
          action: () {},
          onBackPress: onBackPress,
        ),
        body: TabBarView(
          children: [
            ListPlaces(),
            ListPlaces(),
            ListPlaces(),
            ListPlaces(),
          ],
        ),
      ),
    );
  }
}
