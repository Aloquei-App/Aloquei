import 'package:flutter/material.dart';

class TypeHeader extends StatelessWidget {
  const TypeHeader({
    Key key,
    @required this.onBackPress,
    @required this.cityName,
  }) : super(key: key);
  final VoidCallback onBackPress;
  final String cityName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: onBackPress, icon: Icon(Icons.arrow_back)),
        Expanded(
            child: Text(
          cityName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.grey[800]),
        )),
      ],
    );
  }
}
