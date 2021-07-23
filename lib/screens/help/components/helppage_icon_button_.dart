import 'package:aloquei_app/screens/core/colors.dart';
import 'package:flutter/material.dart';

class HelpPageIconButton extends StatelessWidget {
  final String text;
  final VoidCallback onpressed;
  final IconData icon;

  const HelpPageIconButton({Key key, this.text, this.onpressed, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextButton(
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.grey[100])),
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
                      color: greyAirbnb,
                    )),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: lightgreyAirbnb,
            )
          ],
        ),
        onPressed: onpressed,
      ),
    );
  }
}
