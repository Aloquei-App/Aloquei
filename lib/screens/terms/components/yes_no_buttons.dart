import 'package:flutter/material.dart';

class YesOrNoButtons extends StatelessWidget {
  final VoidCallback onpressedYes;
  final VoidCallback onpressedNo;

  const YesOrNoButtons({Key key, this.onpressedYes, this.onpressedNo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          OutlinedButton(
            onPressed: onpressedYes,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Text('Sim',
                style: TextStyle(fontSize: 15, color: Colors.black)),
          ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: onpressedNo,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Text(
              'Não',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
