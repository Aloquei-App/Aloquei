import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/home/home_bloc.dart';
import '../core/navigation.dart';
import 'components/announcement.dart';
import 'components/explore_app_bar.dart';
import 'components/flexibilitie_button.dart';
import 'components/house_list_view.dart';
import 'components/persons_grid_view.dart';
import 'components/title_model.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  ScrollController _scrollController = ScrollController();
  HomeBloc _homeBloc;
  double _opc = 0.0;
  @override
  void initState() {
    _scrollController.addListener(
      () {
        setState(
          () {
            _opc = (_scrollController.offset / 100.0).clamp(0.0, 1.0);
          },
        );
      },
    );
    _homeBloc = BlocProvider.of<HomeBloc>(context);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: ExploreAppBar(
          opc: _opc,
          onTap: () {
            navigateToSearch(context, (value) {
              _homeBloc.add(SearchFromSelectedEvent(exploreModel: value));
            });
          },
        ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              FlexibilitieButton(
                onPressed: () {
                  navigateToSearch(
                    context,
                    (value) {
                      _homeBloc.add(
                        SearchFromSelectedEvent(exploreModel: value),
                      );
                    },
                  );
                },
              ),
              TitleModel(
                title: 'Encontre pessoas legais',
              ),
              PersonsGridView(interestsList: _homeBloc.getInterest),
              TitleModel(title: 'Encontre uma casa'),
              HouseListView(
                houseList: _homeBloc.getApCasa,
              ),
              Announcement(
                title: 'Experimente hospedar',
                text:
                    'Ganhe dinheiro e descubra novas oportunidades ao compartilhar seu espaço.',
                img:
                    'https://diplomathotelbrasilia.com.br/wp-content/uploads/2019/12/4-motivos-para-se-hospedar-no-hotel-diplomat-em-brasilia.jpg',
                onTap: () {
                  navigateToHostPage(context);
                },
              ),
              TitleModel(
                title: "More em uma república",
              ),
              HouseListView(
                houseList: _homeBloc.getRepub,
              ),
              Announcement(
                title: 'Encontre pessoas',
                text:
                    'Adicione o perfil da pessoa que está procurando para dividir um espaço.',
                img:
                    'https://blog.viasul.com/wp-content/uploads/2021/06/post_thumbnail-74170fbba571538e195e61dd0aef1a82.jpeg',
                onTap: () {
                  navigateToInterestPage(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
