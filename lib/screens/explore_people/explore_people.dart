import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/explore_model.dart';
import '../../blocs/explore_people/explore_people_bloc.dart';
import '../core/loading.dart';
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
      child: ExplorePeoplePage(onBackPress: onBackPress),
    );
  }
}

class ExplorePeoplePage extends StatefulWidget {
  final VoidCallback onBackPress;

  const ExplorePeoplePage({Key key, @required this.onBackPress});
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
        onTextChanged: (val) {
          _explorePeopleBloc.add(SearchEvent(search: val));
        },
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
                    itemCount: _explorePeopleBloc.interest.length,
                    itemBuilder: (context, index) {
                      return PlaceItem(
                          model: _explorePeopleBloc.interest[index]);
                    });
              }
            }),
      ),
    );
  }
}
