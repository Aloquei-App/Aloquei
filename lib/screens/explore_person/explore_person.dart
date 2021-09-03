import 'package:flutter/material.dart';

import '../../../../core/models/explore_model.dart';
import 'components/explore_app_bar.dart';
import 'components/place_item.dart';

class ExplorePerson extends StatelessWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  const ExplorePerson({Key key, @required this.onBackPress, this.exploreModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExploreAppBar(
        action: () {},
        onBackPress: onBackPress,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 25, left: 25),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return PlaceItem(
              name: "Chirleey Raiolaser",
              descricao:
                  "Lorem ipsum purus tincidunt habitant hac magna orci, leo nunc libero quisque blandit hac odio primis, tristique etiam ultricies feugiat lobortis pellentesque. enim ultricies nibh vivamus dictum blandit ad purus volutpat per ut volutpat sollicitudin tempus, quis tellus urna eleifend curabitur suspendisse accumsan aenean suscipit neque habitant senectus. vulputate commodo enim velit cubilia justo urna magna egestas, id bibendum per scelerisque libero ut ornare, litora fringilla ligula hac fringilla eleifend elit. urna arcu turpis feugiat imperdiet orci sodales arcu, sem elementum posuere ultricies imperdiet sagittis nisl, vel mollis porta semper phasellus convallis. ",
              img: '',
            );
          },
        ),
      ),
    );
  }
}
