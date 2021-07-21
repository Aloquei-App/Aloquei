import 'package:flutter/material.dart';

import '../../../core/validations.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key key,
    @required this.onChanged,
    @required this.onBackPress,
    @required this.hint,
  }) : super(key: key);
  final Function onChanged;
  final VoidCallback onBackPress;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onBackPress, icon: Icon(Icons.arrow_back)),
        Expanded(
          child: TextFormField(
            cursorColor: Colors.black,
            keyboardType: TextInputType.text,
            onChanged: (value) => onChanged(value),
            decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding:
                    EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                hintText: hint),
            validator: validateEmptyField,
          ),
        ),
      ],
    );
  }
}
