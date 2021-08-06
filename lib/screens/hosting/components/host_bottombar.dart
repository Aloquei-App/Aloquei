import 'package:flutter/material.dart';

class HostBottomBar extends StatelessWidget {
  final VoidCallback onPressedBack;
  final VoidCallback onpressedNext;
  final String text;
  final Color color;

  const HostBottomBar(
      {Key key, this.onPressedBack, this.onpressedNext, this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.w500),
                ),
                onTap: onPressedBack,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(90, 50),
                  backgroundColor: color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7))),
                ),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                onPressed: onpressedNext,
              ),
            ],
          )),
    );
  }
}
