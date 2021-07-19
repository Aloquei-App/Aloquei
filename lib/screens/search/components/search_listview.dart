import 'package:flutter/material.dart';

import '../../../core/models/estados_model.dart';
import 'state_selection_card.dart';

class StateListView extends StatelessWidget {
  const StateListView(
      {Key key,
      @required List<EstadosModel> estadosList,
      @required ScrollController scrollController,
      @required List<Color> colorsList,
      @required Function onTap})
      : _estadosList = estadosList,
        _scrollController = scrollController,
        _colorsList = colorsList,
        _onTap = onTap,
        super(key: key);
  final ScrollController _scrollController;
  final List<EstadosModel> _estadosList;
  final List<Color> _colorsList;
  final Function _onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: ListView.builder(
          itemCount: _estadosList.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return ListTile(
                title: StateSelection(
                  color: _colorsList[index],
                  estadosModel: _estadosList[index],
                ),
                onTap: () => _onTap(_estadosList[index]));
          }),
    );
  }
}
