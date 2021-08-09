import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  final String message;
  const Success({Key key, this.message = 'Operação realizada'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
