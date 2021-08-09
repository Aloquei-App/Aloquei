import 'package:flutter/material.dart';

class TopText extends StatelessWidget {
  final String text;
  final bool visible;
  const TopText({Key key, this.text, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        padding: EdgeInsets.only(top: 90, left: 20),
        child: Text(
          text,
          maxLines: 2,
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
