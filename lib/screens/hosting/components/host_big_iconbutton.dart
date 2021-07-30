import 'package:flutter/material.dart';

class HostBigIconButton extends StatelessWidget {
  final VoidCallback onpressed1;
  final String title1;
  final VoidCallback onpressed2;
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
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
                onPressed: onpressed1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon1,
                    SizedBox(height: 10),
                    Text(
                      title1,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                style: OutlinedButton.styleFrom(
                    primary: Colors.grey, fixedSize: Size(170, 110))),
            OutlinedButton(
                onPressed: onpressed2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    icon2,
                    SizedBox(height: 10),
                    Text(
                      title2,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                style: OutlinedButton.styleFrom(
                    primary: Colors.grey, fixedSize: Size(170, 110))),
          ],
        ));
  }
}
