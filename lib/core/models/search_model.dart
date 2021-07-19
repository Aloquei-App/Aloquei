import 'package:aloquei_app/core/models/cities_model.dart';
import 'package:aloquei_app/core/models/estados_model.dart';

class SearchModel {
  const SearchModel({this.estado, this.cidade, this.tipo});

  final EstadosModel estado;
  final CitiesModel cidade;
  final int tipo;

  SearchModel copyWith({EstadosModel estado, CitiesModel cidade, int tipo}) {
    return SearchModel(
      estado: estado ?? this.estado,
      cidade: cidade ?? this.cidade,
      tipo: tipo ?? this.tipo,
    );
  }
}
