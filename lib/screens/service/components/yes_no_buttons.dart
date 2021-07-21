import 'package:flutter/material.dart';

class YesorNoButtons extends StatelessWidget {
  final VoidCallback onpressed;
  final VoidCallback onpressed2;

  const YesorNoButtons({Key key, this.onpressed2, this.onpressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 30),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          OutlinedButton(
            onPressed: onpressed,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
            ),
            child: const Text('Sim',
                style: TextStyle(fontSize: 15, color: Colors.black)),
          ),
          SizedBox(
            width: 10,
          ),
          OutlinedButton(
            onPressed: onpressed2,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
            ),
            child: const Text('Não',
                style: TextStyle(fontSize: 15, color: Colors.black)),
          ),
        ]));
  }
}
