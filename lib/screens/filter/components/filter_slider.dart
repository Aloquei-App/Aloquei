import 'package:flutter/material.dart';

class FilterSlider extends StatefulWidget {
  const FilterSlider({Key key}) : super(key: key);

  @override
  _FilterSliderState createState() => _FilterSliderState();
}

class _FilterSliderState extends State<FilterSlider> {
  RangeValues _currentRangeValues = const RangeValues(0, 500);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RangeSlider(
        values: _currentRangeValues,
        activeColor: Colors.grey[700],
        inactiveColor: Colors.grey[300],
        min: 0,
        max: 2000,
        divisions: 2000,
        labels: RangeLabels(
          'R\$ ' + _currentRangeValues.start.round().toString(),
          'R\$ ' + _currentRangeValues.end.round().toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}
