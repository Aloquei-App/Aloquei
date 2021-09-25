import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/explore_model.dart';
import '../../blocs/explore_list/explore_list_bloc.dart';
import '../../core/models/user_model.dart';
import '../core/loading.dart';
import 'components/explore_app_bar.dart';
import 'components/list_places.dart';
import '../filter/filter_page.dart';

class ExploreList extends StatelessWidget {
  final VoidCallback onBackPress;
  final ExploreModel exploreModel;
  final UserModel user;
  const ExploreList(
      {Key key,
      @required this.onBackPress,
      @required this.exploreModel,
      @required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ExploreListBloc(exploreModel: exploreModel, user: user)
            ..add(ExploreListStartedEvent()),
      child: ExploreListPage(onBackPress: onBackPress),
    );
  }
}

class ExploreListPage extends StatefulWidget {
  final VoidCallback onBackPress;

  const ExploreListPage({Key key, @required this.onBackPress})
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

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 10,
        context: ctx,
        builder: (ctx) => FilterPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ExploreAppBar(
        action: () => _show(context),
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
                  ListPlaces(
                      scrollController: _defScrollController,
                      modelList: _exploreListBloc.republic),
                  ListPlaces(
                      scrollController: _defScrollController,
                      modelList: _exploreListBloc.casa),
                  ListPlaces(
                      scrollController: _defScrollController,
                      modelList: _exploreListBloc.ap),
                  ListPlaces(
                      scrollController: _defScrollController,
                      modelList: _exploreListBloc.quarto),
                ],
              );
            }
          }),
    );
  }
}
