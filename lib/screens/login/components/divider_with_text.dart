import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: Divider(
              color: Colors.black,
              height: 36,
            ),
          ),
        ),
        Text(
          "ou",
          style: TextStyle(
            fontSize: 15,
            color: Color(0xFF999999),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: Divider(
              color: Colors.black,
              height: 36,
            ),
          ),
        ),
      ],
    );
  }
}
