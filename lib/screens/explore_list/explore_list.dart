import 'package:flutter/material.dart';

import '../../../../core/models/explore_model.dart';
import 'components/explore_app_bar.dart';
import 'components/list_places.dart';

class ExploreList extends StatelessWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel; // ele pode vir como null
  const ExploreList({Key key, @required this.onBackPress, this.exploreModel})
      : super(key: key);

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
