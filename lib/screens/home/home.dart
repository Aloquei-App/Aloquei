import 'package:aloquei_app/blocs/home/home_bloc.dart';
import 'package:aloquei_app/screens/core/loading.dart';
import 'package:aloquei_app/screens/core/snack_bar.dart';
import 'package:aloquei_app/screens/explore_list/explore_list.dart';
import 'package:aloquei_app/screens/home/components/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import "components/explore/explore.dart";
import '../profile/profile.dart';
import '../trips/trips.dart';
import '../wishlists/wishlists.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(HomeStartedEvent()),
      child: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc _homeBloc;

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    _homeBloc = BlocProvider.of<HomeBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<HomeBloc, HomeState>(
          listenWhen: (previous, current) => current is FailState,
          listener: (contextListener, state) {
            if (state is FailState) {
              buildWarningSnackBar(context, state.message);
            }
          },
          buildWhen: (previous, current) => current is! FailState,
          builder: (context, state) {
            if (state is ExploreState) {
              return ExplorePage();
            } else if (state is WhishListState) {
              return WishlistsPage();
            } else if (state is HousesState) {
              return TripsPage();
            } else if (state is InterestsState) {
              return TripsPage();
            } else if (state is ProfileState) {
              return ProfilePage();
            } else if (state is ExploreListState) {
              return ExploreList(onBackPress: () {
                _homeBloc.add(OnTabChange(index: -1));
              });
            } else {
              return Loading();
            }
          },
        ),
        bottomNavigationBar: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return HomeNavigationBottomBar(
              currentIndex: _homeBloc.getTab,
              onChangeTab: (index) {
                _homeBloc.add(OnTabChange(index: index));
              },
            );
          },
        ));
  }
}
