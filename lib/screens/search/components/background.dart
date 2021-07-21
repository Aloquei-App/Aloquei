import 'package:flutter/material.dart';

class BackGround extends StatelessWidget {
  final Widget child;
  const BackGround({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        margin:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.001),
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: [
              Colors.purple[900],
              Colors.pink,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
          ),
        ),
        child: child);
  }
}
