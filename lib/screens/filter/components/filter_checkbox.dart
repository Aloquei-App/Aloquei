import 'package:flutter/material.dart';

class FilterCheckBox extends StatefulWidget {
  final String checkBoxTitle;

  const FilterCheckBox({Key key, this.checkBoxTitle}) : super(key: key);

  @override
  _FilterCheckBoxState createState() => _FilterCheckBoxState();
}

class _FilterCheckBoxState extends State<FilterCheckBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20, right: 10),
        child: CheckboxListTile(
          activeColor: Colors.black,
          title: Text(
            widget.checkBoxTitle,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
          ),
          value: isSelected,
          onChanged: (newValue) {
            setState(() {
              isSelected = newValue;
            });
          },
        ));
  }
}
