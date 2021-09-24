import 'package:flutter/material.dart';

class Selection extends StatelessWidget {
  const Selection({
    Key key,
    @required Color color,
    @required String sigla,
    @required String nome,
  })  : _color = color,
        _sigla = sigla,
        _nome = nome,
        super(key: key);

  final Color _color;
  final String _sigla;
  final String _nome;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            _sigla,
            style: TextStyle(color: Colors.white),
          )),
        ),
        Text(_nome),
      ],
    );
  }
}
