import 'package:flutter/material.dart';

class HostTitleButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String title;

  const HostTitleButton({Key key, this.onpressed, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(bottom: 20),
        child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontSize: 18),
            ),
            tileColor: Colors.white,
            selectedTileColor: Color(0xFFf7f7f7),
            selected: true,
            onTap: onpressed,
            minVerticalPadding: 25,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Colors.black))));
  }
}
