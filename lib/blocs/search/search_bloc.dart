import 'dart:async';
import 'dart:ui';

import 'package:aloquei_app/core/models/cities_model.dart';
import 'package:aloquei_app/core/models/estados_model.dart';
import 'package:aloquei_app/resources/apis/ibge.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:random_color/random_color.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchInitial());
  final IbgeRepository _ibgeRepository = IbgeRepository();

  final RandomColor _randomColor = RandomColor();

  List<EstadosModel> _estadosList = [];

  List<CitiesModel> _cidadesList = [];

  List<Color> _colorList = [];

  String _topText = '';

  bool _showTopWidget = false;

  EstadosModel _selectedState;

  CitiesModel _selectedCity;

  int _selectedType;

  List<EstadosModel> get estados => _estadosList;

  List<CitiesModel> get cidades => _cidadesList;

  List<Color> get colors => _colorList;

  String get text => _topText;

  bool get show => _showTopWidget;

  set estado(value) => _selectedState = value;

  set cidade(value) => _selectedCity = value;

  set type(value) => _selectedType = value;

  @override
  Stream<SearchState> mapEventToState(
    SearchEvent event,
  ) async* {
    if (event is SearchStartedEvent) {
      yield LoadingState();
      _estadosList = await _ibgeRepository.getStates();
      _estadosList.sort((eleA, eleB) => eleA.nome.compareTo(eleB.nome));
      _colorList = List.generate(
          _estadosList.length,
          (index) => _randomColor.randomColor(
              colorSaturation: ColorSaturation.highSaturation));
      yield ShowAvailableStates();
    } else if (event is StateSelectedEvent) {
      if (event.estado != null) {
        _topText = "Qual cidade?";
        _showTopWidget = true;
        _selectedState = event.estado;
        _cidadesList =
            await _ibgeRepository.getCitiesFromState(event.estado.id);
        _cidadesList.sort((eleA, eleB) => eleA.nome.compareTo(eleB.nome));
        _colorList = List.generate(
            _cidadesList.length,
            (index) => _randomColor.randomColor(
                colorSaturation: ColorSaturation.highSaturation));

        yield ShowAvailableCities();
      }
    } else if (event is CitySelectedEvent) {
      if (event.cidade != null) {
        _topText = "Qual tipo de busca?";
        _showTopWidget = true;
        _selectedCity = event.cidade;
        yield ShowAvailableTypes();
      }
    } else if (event is TypeSelectedEvent) {
      if (event.tipo != null) {
        _topText = "";
        _showTopWidget = false;
        _selectedType = event.tipo;
        yield GoToMap();
      }
    }
  }
}
