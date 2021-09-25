import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  final String message;
  const NotFound({Key key, this.message = 'Não há registros nessa seção.'})
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
                Icon(Icons.do_not_disturb_alt_outlined,size: 70.0, color: Colors.grey,),
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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