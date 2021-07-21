import 'package:flutter/material.dart';

class DefaultIconHelpButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final IconData icon;

  const DefaultIconHelpButton({Key key, this.text, this.onpressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(icon, color: Colors.black, size: 23),
                SizedBox(width: 15),
                Text(text,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Color(0xFF3e3e3e),
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color(0xFFd4d4d4),
            )
          ],
        ),
        onPressed: onpressed,
      ),
    );
  }
}
