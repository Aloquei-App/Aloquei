import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final IconData icon;

  const DefaultButton({Key key, this.text, this.onpressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Color(0xFF494949),
                      fontWeight: FontWeight.w600),
                ),
                Icon(icon, color: Color(0xFF494949), size: 23),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color(0xFF7f7f7f),
            )
          ],
        ),
        onPressed: onpressed,
      ),
    );
  }
}
