import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final IconData icon;
  final double size;

  const DefaultButton(
      {Key key, this.text, this.onpressed, this.icon, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 7),
        child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Color(0xFFebebeb)),
              ),
            ),
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 20.0, color: Color(0xFF494949)),
                  ),
                  SizedBox(width: 50),
                  Icon(icon, color: Color(0xFF494949), size: size),
                ],
              ),
              onPressed: () {},
            )));
  }
}
