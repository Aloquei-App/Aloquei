import 'package:flutter/material.dart';

import '../../../../core/models/explore_model.dart';
import 'components/explore_app_bar.dart';
import 'components/list_people.dart';

class ExplorePerson extends StatelessWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  const ExplorePerson({Key key, @required this.onBackPress, this.exploreModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: ExploreAppBar(
          action: () {},
          onBackPress: onBackPress,
        ),
        body: TabBarView(
          children: [
            ListPlaces(),
          ],
        ),
      ),
    );
  }
}
