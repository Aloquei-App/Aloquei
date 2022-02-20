import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HostBigIconButton extends StatefulWidget {
  final Function onpressed1;
  final String title1;
  final Function onpressed2;
  final String title2;
  final Icon icon1;
  final Icon icon2;

  const HostBigIconButton(
      {Key key,
      this.onpressed1,
      this.title1,
      this.onpressed2,
      this.title2,
      this.icon1,
      this.icon2})
      : super(key: key);

  @override
  _HostBigIconButtonState createState() => _HostBigIconButtonState();
}

class _HostBigIconButtonState extends State<HostBigIconButton> {
  int valor1 = 0;
  int valor2 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Stack(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  valor1++;
                });
                widget.onpressed1(valor1);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.icon1,
                  SizedBox(height: 10),
                  Text(
                    widget.title1,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.grey, fixedSize: Size(170, 110)),
            ),
            Badge(
              toAnimate: false,
              shape: BadgeShape.square,
              badgeColor: Colors.deepPurple,
              borderRadius: BorderRadius.circular(8),
              badgeContent: Text(valor1.toString(),
                  style: TextStyle(color: Colors.white)),
            )
          ],
        ),
        Stack(children: [
          OutlinedButton(
            onPressed: () {
              setState(() {
                valor2++;
              });
              widget.onpressed2(valor2);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.icon2,
                SizedBox(height: 10),
                Text(
                  widget.title2,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            style: OutlinedButton.styleFrom(
                primary: Colors.grey, fixedSize: Size(170, 110)),
          ),
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.deepPurple,
            borderRadius: BorderRadius.circular(8),
            badgeContent:
                Text(valor2.toString(), style: TextStyle(color: Colors.white)),
          )
        ]),
      ]),
    );
  }
}
