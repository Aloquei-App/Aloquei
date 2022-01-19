import 'package:flutter/material.dart';

class DropDownButton<T> extends StatefulWidget {
  final List<DropdownMenuItem<T>> items;
  final Function onChanged;
  final T value;
  final String hint;
  DropDownButton({this.items, this.onChanged, this.hint, this.value}) : super();

  @override
  _DropDownButtonState<T> createState() => _DropDownButtonState<T>();
}

class _DropDownButtonState<T> extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    T value = widget.value ?? null;
    return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 30, right: 30),
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: DropdownButton<T>(
            isExpanded: true,
            underline: Container(),
            value: value,
            hint: Text(widget.hint),
            icon: const Icon(Icons.keyboard_arrow_down),
            items: widget.items,
            onChanged: (T newValue) {
              widget.onChanged(newValue);
              setState(() {
                value = newValue;
              });
            },
          ),
        ));
  }
}
