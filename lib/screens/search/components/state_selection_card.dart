import 'package:flutter/material.dart';

import '../../../core/models/estados_model.dart';

class StateSelection extends StatelessWidget {
  const StateSelection({
    Key key,
    @required Color color,
    @required EstadosModel estadosModel,
  })  : _color = color,
        _estadosModel = estadosModel,
        super(key: key);

  final Color _color;
  final EstadosModel _estadosModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.11,
            height: MediaQuery.of(context).size.height * 0.06,
            margin: EdgeInsets.only(left: 15, right: 20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: _color,
            ),
            child: Center(
                child: Text(
              _estadosModel.sigla,
              style: TextStyle(color: Colors.white),
            )),
          ),
          Text(_estadosModel.nome),
        ],
      ),
    );
  }
}
