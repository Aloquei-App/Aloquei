import 'dart:async';
import 'dart:ui';

import '../../core/models/explore_model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:random_color/random_color.dart';

import '../../core/models/cities_model.dart';
import '../../core/models/estados_model.dart';
import '../../resources/apis/ibge.dart';

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

  List<Color> get colors => _colorList;

  String get text => _topText;

  bool get show => _showTopWidget;

  List<EstadosModel> _buildFilteredStateList(String search) {
    List<String> filtro = search.toLowerCase().split(' ');
    List<EstadosModel> lista = [];
    for (var i = 0; i < _estadosList.length; i++) {
      if ((filtro
              .where((x) => _estadosList[i].nome.toLowerCase().contains(x))
              .isNotEmpty ||
          filtro
              .where((x) => _estadosList[i].sigla.toLowerCase().contains(x))
              .isNotEmpty)) lista.add(_estadosList[i]);
    }
    return lista;
  }

  List<CitiesModel> _buildFilteredCityList(String search) {
    List<String> filtro = search.toLowerCase().split(' ');
    List<CitiesModel> lista = [];
    for (var i = 0; i < _cidadesList.length; i++) {
      if ((filtro
          .where((x) => _cidadesList[i].nome.toLowerCase().contains(x))
          .isNotEmpty)) lista.add(_cidadesList[i]);
    }
    return lista;
  }

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
      yield ShowAvailableStates(estadosList: _estadosList);
    } else if (event is EstadoSearchEvent) {
      if (event.termo.isNotEmpty) {
        yield SearchInitial();
        List<EstadosModel> filtered = _buildFilteredStateList(event.termo);
        yield ShowAvailableStates(estadosList: filtered);
      } else
        yield ShowAvailableStates(estadosList: _estadosList);
    } else if (event is BackToEstadoEvent) {
      _topText = '';
      _showTopWidget = false;
      _selectedCity = null;
      _selectedState = null;
      yield ShowAvailableStates(estadosList: _estadosList);
    } else if (event is StateSelectedEvent) {
      if (event.estado != null) {
        yield LoadingState();
        _topText = "Qual cidade?";
        _showTopWidget = true;
        _selectedState = event.estado;
        _cidadesList =
            await _ibgeRepository.getCitiesFromState(event.estado.id);
        _cidadesList.sort((eleA, eleB) => eleA.nome.compareTo(eleB.nome));
        if (_cidadesList.length > _colorList.length) {
          _colorList = List.generate(
              _cidadesList.length,
              (index) => _randomColor.randomColor(
                  colorSaturation: ColorSaturation.highSaturation));
        }
        yield ShowAvailableCities(cidadesList: _cidadesList);
      }
    } else if (event is CitySearchEvent) {
      if (event.termo.isNotEmpty) {
        yield SearchInitial();
        List<CitiesModel> filtered = _buildFilteredCityList(event.termo);
        yield ShowAvailableCities(cidadesList: filtered);
      } else
        yield ShowAvailableCities(cidadesList: _cidadesList);
    } else if (event is BackToCityEvent) {
      _topText = "Qual cidade?";
      _showTopWidget = true;
      _selectedCity = null;
      yield ShowAvailableCities(cidadesList: _cidadesList);
    } else if (event is CitySelectedEvent) {
      if (event.cidade != null) {
        _topText = "Qual tipo de busca?";
        _showTopWidget = true;
        _selectedCity = event.cidade;
        yield ShowAvailableTypes(city: _selectedCity.nome);
      }
    } else if (event is TypeSelectedEvent) {
      if (event.tipo != null) {
        _selectedType = event.tipo;
        yield GoToMap(
            explore: ExploreModel(
                city: _selectedCity,
                estado: _selectedState,
                type: _selectedType));
      }
    }
  }
}
