import 'package:flutter/material.dart';

import '../../../core/models/estados_model.dart';
import 'selection.dart';

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
      child: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => const Divider(
                thickness: 2,
              ),
          itemCount: _estadosList.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return ListTile(
                title: Selection(
                  color: _colorsList[index],
                  sigla: _estadosList[index].sigla,
                  nome: _estadosList[index].nome,
                ),
                onTap: () => _onTap(_estadosList[index]));
          }),
    );
  }
}
