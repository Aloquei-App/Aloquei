import 'package:flutter/material.dart';

class FilterSubTitle extends StatelessWidget {
  const FilterSubTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        alignment: Alignment.centerLeft,
        child: Text(
          'Estes são alguns dos filtros que as pessoas que viajam para Joinville usam com mais frequência',
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 20,
              fontWeight: FontWeight.w400),
        ));
  }
}
