import 'package:flutter/material.dart';

class FilterCheckBoxText extends StatefulWidget {
  final String checkBoxTitle, checkBoxSubTitle;

  const FilterCheckBoxText({Key key, this.checkBoxTitle, this.checkBoxSubTitle})
      : super(key: key);

  @override
  _FilterCheckBoxTextState createState() => _FilterCheckBoxTextState();
}

class _FilterCheckBoxTextState extends State<FilterCheckBoxText> {
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
          subtitle: Text(widget.checkBoxSubTitle),
          value: isSelected,
          onChanged: (newValue) {
            setState(() {
              isSelected = newValue;
            });
          },
        ));
  }
}
