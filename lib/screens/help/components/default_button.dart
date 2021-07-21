import 'package:flutter/material.dart';

class DefaultHelpButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;

  const DefaultHelpButton({Key key, this.text, this.onpressed})
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
                    fontSize: 17.0,
                    color: Color(0xFF3e3e3e),
                  ),
                ),
                Icon(Icons.arrow_forward_ios,
                    color: Color(0xFF3e3e3e), size: 23),
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
