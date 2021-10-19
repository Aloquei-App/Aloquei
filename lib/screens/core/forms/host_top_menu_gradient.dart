import 'package:flutter/material.dart';

import '../navigation.dart';

class TopMenuGradient extends StatelessWidget {
  final String text1;
  final String text2;
  final int color1;
  final int color2;

  const TopMenuGradient(
      {Key key, this.text1, this.text2, this.color1, this.color2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.5,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(color1), Color(color2)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0]),
      ),
      child: Column(children: [
        Container(
            padding: EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /*TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(16, 19, 11, 0.5),
                    shape: CircleBorder(),
                  ),
                  child: Icon(
                    Icons.close_sharp,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),*/
                TextButton(
                  style: TextButton.styleFrom(
                      minimumSize: Size(80, 45),
                      backgroundColor: Color.fromRGBO(16, 19, 11, 0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40)))),
                  child: Text('Ajuda',
                      style: TextStyle(fontSize: 17, color: Colors.white)),
                  onPressed: () {
                    navigateToHelp(context);
                  },
                ),
              ],
            )),
        Expanded(child: SizedBox()),
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                Text(text1,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
              ],
            )),
        Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 10),
            child: Column(
              children: [
                Text(text2,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500))
              ],
            ))
      ]),
    );
  }
}
