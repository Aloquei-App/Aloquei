import 'package:flutter/material.dart';

class FilterTitle extends StatelessWidget {
  const FilterTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(20),
        child: Text(
          'Filtros populares',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
        ));
  }
}
