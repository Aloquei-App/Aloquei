import 'package:aloquei_app/screens/person_list/person_list.dart';
import 'package:aloquei_app/screens/rental_list/rental_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/home/home_bloc.dart';
import '../core/loading.dart';
import '../core/snack_bar.dart';
import '../explore/explore.dart';
import '../explore_list/explore_list.dart';
import '../profile/profile.dart';
import '../wishlists/wishlists.dart';
import 'components/bottom_bar.dart';

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
              return RentalList();
            } else if (state is InterestsState) {
              return PersonList();
            } else if (state is ProfileState) {
              return ProfilePage();
            } else if (state is ExploreListState) {
              return ExploreList(
                onBackPress: () {
                  _homeBloc.add(OnTabChange(index: -1));
                },
                exploreModel: state.exploreModel,
              );
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
