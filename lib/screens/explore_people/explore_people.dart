import 'package:aloquei_app/screens/core/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/explore_model.dart';
import '../../blocs/explore_people/explore_people_bloc.dart';
import 'components/explore_app_bar.dart';
import 'components/place_item.dart';

class ExplorePeople extends StatelessWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  const ExplorePeople({Key key, @required this.onBackPress, this.exploreModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExplorePeopleBloc(exploreModel: exploreModel)
        ..add(ExploreListStartedEvent()),
      child: ExplorePeoplePage(
          onBackPress: onBackPress, exploreModel: exploreModel),
    );
  }
}

class ExplorePeoplePage extends StatefulWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  const ExplorePeoplePage(
      {Key key, @required this.onBackPress, this.exploreModel});
  @override
  _ExplorePeoplePageState createState() => _ExplorePeoplePageState();
}

class _ExplorePeoplePageState extends State<ExplorePeoplePage> {
  final ScrollController _defScrollController = ScrollController();
  ExplorePeopleBloc _explorePeopleBloc;
  @override
  void initState() {
    _explorePeopleBloc = BlocProvider.of<ExplorePeopleBloc>(context);
    _defScrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _explorePeopleBloc.close();
    super.dispose();
  }

  void _scrollListener() {
    if (_defScrollController.offset >=
            _defScrollController.position.maxScrollExtent &&
        !_defScrollController.position.outOfRange) {
      _explorePeopleBloc.add(GetMoreItensEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExploreAppBar(
        action: () {},
        onBackPress: widget.onBackPress,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, right: 25, left: 25),
        child: BlocBuilder<ExplorePeopleBloc, ExplorePeopleState>(
            buildWhen: (previous, current) =>
                current is LoadingListState || current is ShowListState,
            builder: (context, state) {
              if (state is LoadingListState) {
                return Loading();
              } else {
                return ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return PlaceItem(
                        name: "Chirleey Raiolaser",
                        descricao:
                            "Lorem ipsum purus tincidunt habitant hac magna orci, leo nunc libero quisque blandit hac odio primis, tristique etiam ultricies feugiat lobortis pellentesque. enim ultricies nibh vivamus dictum blandit ad purus volutpat per ut volutpat sollicitudin tempus, quis tellus urna eleifend curabitur suspendisse accumsan aenean suscipit neque habitant senectus. vulputate commodo enim velit cubilia justo urna magna egestas, id bibendum per scelerisque libero ut ornare, litora fringilla ligula hac fringilla eleifend elit. urna arcu turpis feugiat imperdiet orci sodales arcu, sem elementum posuere ultricies imperdiet sagittis nisl, vel mollis porta semper phasellus convallis. ",
                        img: '',
                      );
                    });
              }
            }),
      ),
    );
  }
}
