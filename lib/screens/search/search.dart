import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/search/search_bloc.dart';
import '../core/loading.dart';
import 'components/background.dart';
import 'components/draggable_background.dart';
import 'components/search_header.dart';
import 'components/search_listview.dart';
import 'components/top_text.dart';

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
          BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return TopText(text: _searchBloc.text, visible: _searchBloc.show);
            },
          ),
          Expanded(
            child: DraggableScrollableSheet(
                initialChildSize: 0.8,
                minChildSize: 0.8,
                maxChildSize: 0.95,
                builder: (context, scrollController) {
                  return DraggableBackground(
                    child: BlocBuilder<SearchBloc, SearchState>(
                      builder: (context, state) {
                        if (state is ShowAvailableStates) {
                          return Column(children: [
                            SearchHeader(
                              hint: 'Para qual estado está indo?',
                              onBackPress: () {
                                Navigator.of(context).pop();
                              },
                              onChanged: (value) {
                                // TODO evento de busca de estados
                              },
                            ),
                            StateListView(
                                colorsList: _searchBloc.colors,
                                estadosList: _searchBloc.estados,
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
                                // TODO evento para voltar para a escolha do estado
                              },
                              onChanged: (value) {
                                // TODO evento de busca de cidades
                              },
                            ),
                            // TODO mostrar os cards das cidades
                          ]);
                        } else if (state is ShowAvailableTypes) {
                          // mostrar os tipos moradia/interesse
                          return Container();
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
