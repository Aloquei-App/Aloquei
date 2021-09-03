import 'package:aloquei_app/screens/filter/components/filter_counter.dart';
import 'package:flutter/material.dart';

class FilterCC extends StatelessWidget {
  final String text;

  const FilterCC({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            CounterView()
          ],
        ));
  }
}
