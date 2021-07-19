import 'package:flutter/material.dart';

import '../../../core/models/cities_model.dart';
import 'selection.dart';

class CityListView extends StatelessWidget {
  const CityListView(
      {Key key,
      @required List<CitiesModel> cityList,
      @required ScrollController scrollController,
      @required List<Color> colorsList,
      @required Function onTap})
      : _cityList = cityList,
        _scrollController = scrollController,
        _colorsList = colorsList,
        _onTap = onTap,
        super(key: key);
  final ScrollController _scrollController;
  final List<CitiesModel> _cityList;
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
          itemCount: _cityList.length,
          controller: _scrollController,
          itemBuilder: (context, index) {
            return ListTile(
                title: Selection(
                  color: _colorsList[index],
                  sigla: _cityList[index].nome.substring(0, 1),
                  nome: _cityList[index].nome,
                ),
                onTap: () => _onTap(_cityList[index]));
          }),
    );
  }
}
