import 'package:flutter/material.dart';

class HostContinueButton extends StatelessWidget {
  final VoidCallback onPressed;

  const HostContinueButton({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: MaterialButton(
                  child: Text(
                    'Tudo certo',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.black,
                  height: MediaQuery.of(context).size.width * 0.12,
                  minWidth: MediaQuery.of(context).size.width * 0.85,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  onPressed: onPressed,
                ))));
  }
}
