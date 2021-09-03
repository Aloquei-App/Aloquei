import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/explore_model.dart';
import '../../blocs/explore_list/explore_list_bloc.dart';
import '../core/loading.dart';
import 'components/explore_app_bar.dart';
import 'components/list_places.dart';

class ExploreList extends StatelessWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  const ExploreList(
      {Key key, @required this.onBackPress, @required this.exploreModel});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExploreListBloc(exploreModel: exploreModel)
        ..add(ExploreListStartedEvent()),
      child:
          ExploreListPage(onBackPress: onBackPress, exploreModel: exploreModel),
    );
  }
}

class ExploreListPage extends StatefulWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  const ExploreListPage(
      {Key key, @required this.onBackPress, this.exploreModel})
      : super(key: key);

  @override
  _ExploreListState createState() => _ExploreListState();
}

class _ExploreListState extends State<ExploreListPage>
    with SingleTickerProviderStateMixin {
  final ScrollController _defScrollController = ScrollController();
  TabController _tabController;
  ExploreListBloc _exploreListBloc;

  @override
  void initState() {
    super.initState();
    _exploreListBloc = BlocProvider.of<ExploreListBloc>(context);
    _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
    _defScrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _exploreListBloc.close();
    super.dispose();
  }

  void _scrollListener() {
    if (_defScrollController.offset >=
            _defScrollController.position.maxScrollExtent &&
        !_defScrollController.position.outOfRange) {
      _exploreListBloc.add(GetMoreItensEvent(tabIndex: _tabController.index));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExploreAppBar(
        action: () {
          // TODO show filter
        },
        onTextChanged: (value) {
          _exploreListBloc.add(SearchEvent(search: value));
        },
        tabController: _tabController,
        onBackPress: widget.onBackPress,
      ),
      body: BlocBuilder<ExploreListBloc, ExploreListState>(
          buildWhen: (previous, current) =>
              current is LoadingListState || current is ShowListState,
          builder: (context, state) {
            if (state is LoadingListState) {
              return TabBarView(
                  controller: _tabController,
                  children: [Loading(), Loading(), Loading(), Loading()]);
            } else {
              return TabBarView(
                controller: _tabController,
                children: [
                  ListPlaces(scrollController: _defScrollController),
                  ListPlaces(scrollController: _defScrollController),
                  ListPlaces(scrollController: _defScrollController),
                  ListPlaces(scrollController: _defScrollController),
                ],
              );
            }
          }),
    );
  }
}
