import 'package:flutter/material.dart';

class HostTitleSubtitleButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String title;
  final String subtitle;

  const HostTitleSubtitleButton(
      {Key key, this.onpressed, this.title, this.subtitle})
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
            subtitle: Text(subtitle,
                style: TextStyle(color: Colors.grey[700], fontSize: 17)),
            tileColor: Colors.white,
            selectedTileColor: Color(0xFFf7f7f7),
            selected: true,
            onTap: () {},
            minVerticalPadding: 30,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Colors.black))));
  }
}
