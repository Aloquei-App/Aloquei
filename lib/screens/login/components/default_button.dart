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
      padding: const EdgeInsets.only(top: 3.0, bottom: 12.0),
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon, color: Colors.black, size: size),
            SizedBox(width: 62),
            Text(
              text,
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          side: BorderSide(width: 0.7, color: Colors.black),
          minimumSize: Size(400.0, 55.0),
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
        onPressed: onpressed,
      ),
    );
  }
}
