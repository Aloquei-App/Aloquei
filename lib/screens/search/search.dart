import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/search/search_bloc.dart';
import '../core/loading.dart';
import 'components/background.dart';
import 'components/city_listview.dart';
import 'components/draggable_background.dart';
import 'components/search_header.dart';
import 'components/state_listview.dart';
import 'components/top_text.dart';
import 'components/type_header.dart';
import 'components/type_listview.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc()..add(SearchStartedEvent()),
      child: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = BlocProvider.of<SearchBloc>(context);
  }

  @override
  void dispose() {
    _searchBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGround(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          BlocConsumer<SearchBloc, SearchState>(
            listenWhen: (previous, current) => current is GoToMap,
            listener: (context, state) {
              if (state is GoToMap) {
                // TODO navigate to map
              }
            },
            buildWhen: (previous, current) => current is! GoToMap,
            builder: (context, state) {
              return TopText(text: _searchBloc.text, visible: _searchBloc.show);
            },
          ),
          Expanded(
            child: DraggableScrollableSheet(
                initialChildSize: 0.95,
                minChildSize: 0.8,
                maxChildSize: 0.95,
                builder: (context, scrollController) {
                  return DraggableBackground(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      buildWhen: (previous, current) => current is! GoToMap,
                      builder: (context, state) {
                        if (state is ShowAvailableStates) {
                          return Column(children: [
                            SearchHeader(
                              hint: 'Para qual estado está indo?',
                              onBackPress: () {
                                Navigator.of(context).pop();
                              },
                              onChanged: (value) {
                                _searchBloc
                                    .add(EstadoSearchEvent(termo: value));
                              },
                            ),
                            StateListView(
                                colorsList: _searchBloc.colors,
                                estadosList: state.estadosList,
                                scrollController: scrollController,
                                onTap: (value) {
                                  _searchBloc
                                      .add(StateSelectedEvent(estado: value));
                                }),
                          ]);
                        } else if (state is ShowAvailableCities) {
                          return Column(children: [
                            SearchHeader(
                              hint: 'Para qual cidade está indo?',
                              onBackPress: () {
                                _searchBloc.add(BackToEstadoEvent());
                              },
                              onChanged: (value) {
                                _searchBloc.add(CitySearchEvent(termo: value));
                              },
                            ),
                            CityListView(
                                colorsList: _searchBloc.colors,
                                cityList: state.cidadesList,
                                scrollController: scrollController,
                                onTap: (value) {
                                  _searchBloc
                                      .add(CitySelectedEvent(cidade: value));
                                }),
                          ]);
                        } else if (state is ShowAvailableTypes) {
                          return Column(
                            children: [
                              TypeHeader(
                                onBackPress: () {
                                  _searchBloc.add(BackToCityEvent());
                                },
                                cityName: state.city,
                              ),
                              TypeListView(
                                  scrollController: scrollController,
                                  onTap: (value) {
                                    _searchBloc
                                        .add(TypeSelectedEvent(tipo: value));
                                  }),
                            ],
                          );
                        } else if (state is LoadingState) {
                          return Loading();
                        }
                        return Container();
                      },
                    ),
                  );
                }),
          ),
        ]),
      ),
    );
  }
}
